#!/bin/bash
# Batch orchestrator — runs headless claude workers in parallel
# Usage: bash batch/run-batch.sh [--parallel N] [--start-from N]

set -euo pipefail
cd "$(dirname "$0")/.."

PARALLEL=${1:-3}
START_FROM=${2:-1}
DATE=$(date +%Y-%m-%d)
INPUT="batch/batch-input.tsv"
STATE="batch/batch-state.tsv"
PROMPT_FILE="batch/batch-prompt.md"
MAX_REPORT=$(ls reports/ 2>/dev/null | grep -oE '^[0-9]+' | sort -n | tail -1 || echo "038")

echo "=== career-ops batch ==="
echo "Date: $DATE"
echo "Parallel workers: $PARALLEL"
echo "Starting from ID: $START_FROM"
echo "Max existing report: $MAX_REPORT"
echo ""

# Count pending
PENDING=$(grep -c "pending" "$STATE" || echo "0")
echo "Pending jobs: $PENDING"
echo ""

process_job() {
  local id=$1 url=$2 company=$3 role=$4
  local report_num=$(printf "%03d" $((MAX_REPORT + id)))
  local slug=$(echo "$company" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd 'a-z0-9-')
  local log_file="batch/logs/${report_num}-${slug}.log"

  echo "[${id}] Starting: ${company} — ${role}"

  # Update state to running
  sed -i.bak "s/^${id}\t.*/${id}\t${url}\trunning\t$(date -u +%Y-%m-%dT%H:%M:%SZ)\t-\t${report_num}\t-\t-\t0/" "$STATE" 2>/dev/null || true

  # Build worker prompt
  local worker_prompt="You are a career-ops batch worker. Evaluate this job offer for Casey Meurer.

INSTRUCTIONS: Read cv.md, config/profile.yml, and modes/_profile.md first. Then:
1. Fetch the JD from the URL using WebFetch
2. Write a complete A-G evaluation report to reports/${report_num}-${slug}-${DATE}.md
3. Write a tracker TSV line to batch/tracker-additions/${id}-${slug}.tsv
4. If score >= 3.0, generate a tailored PDF

URL: ${url}
Company: ${company}
Role: ${role}
Report Number: ${report_num}
Date: ${DATE}
Batch ID: ${id}

IMPORTANT:
- Read cv.md and modes/_profile.md BEFORE evaluating
- Use WebFetch to get the JD (Playwright not available in batch mode)
- Mark verification as 'unconfirmed (batch mode)' in the report header
- TSV format: {num}\\t{date}\\t{company}\\t{role}\\tstatus\\t{score}/5\\t{pdf_emoji}\\t[{num}](reports/{report_file})\\t{note}
- Status column uses 'Evaluated' (English)
- Include **URL:** in report header
- Include Machine Summary YAML block
- Output JSON summary to stdout when done"

  # Run headless worker
  timeout 300 claude -p "$worker_prompt" --max-turns 15 > "$log_file" 2>&1 || true

  # Check if report was created
  if ls reports/${report_num}-*.md 1>/dev/null 2>&1; then
    local score=$(grep -oP 'Score:\*\* \K[0-9.]+' reports/${report_num}-*.md 2>/dev/null || echo "N/A")
    echo "[${id}] Done: ${company} — ${role} (score: ${score})"
    sed -i.bak "s/^${id}\t.*/${id}\t${url}\tcompleted\t-\t$(date -u +%Y-%m-%dT%H:%M:%SZ)\t${report_num}\t${score}\t-\t0/" "$STATE" 2>/dev/null || true
  else
    echo "[${id}] FAILED: ${company} — ${role}"
    sed -i.bak "s/^${id}\t.*/${id}\t${url}\tfailed\t-\t$(date -u +%Y-%m-%dT%H:%M:%SZ)\t${report_num}\t-\tno_report\t1/" "$STATE" 2>/dev/null || true
  fi
}

export -f process_job
export MAX_REPORT DATE STATE

# Process jobs in parallel using xargs
tail -n +2 "$INPUT" | awk -F'\t' -v start="$START_FROM" '$1 >= start {print}' | \
  while IFS=$'\t' read -r id url company role; do
    # Skip if already completed
    if grep -q "^${id}\t.*\tcompleted\t" "$STATE" 2>/dev/null; then
      continue
    fi
    echo "${id}|${url}|${company}|${role}"
  done | \
  xargs -P "$PARALLEL" -I {} bash -c '
    IFS="|" read -r id url company role <<< "{}"
    cd "'"$(pwd)"'"

    report_num=$(printf "%03d" $(('"$MAX_REPORT"' + id)))
    slug=$(echo "$company" | tr "[:upper:]" "[:lower:]" | tr " " "-" | tr -cd "a-z0-9-")
    log_file="batch/logs/${report_num}-${slug}.log"
    DATE="'"$DATE"'"

    echo "[${id}] Starting: ${company} — ${role}"

    worker_prompt="You are a career-ops batch worker. Evaluate this job offer for Casey Meurer.

Read cv.md, config/profile.yml, and modes/_profile.md first. Then:
1. Fetch the JD from the URL using WebFetch
2. Write a complete A-G evaluation report to reports/${report_num}-${slug}-${DATE}.md
3. Write a tracker TSV line to batch/tracker-additions/${id}-${slug}.tsv
4. If score >= 3.0, generate a tailored PDF to output/

URL: ${url}
Company: ${company}
Role: ${role}
Report Number: ${report_num}
Date: ${DATE}
Batch ID: ${id}

IMPORTANT:
- Read cv.md and modes/_profile.md BEFORE evaluating
- Use WebFetch to get the JD (Playwright not available in batch mode)
- Mark verification as unconfirmed (batch mode) in the report header
- TSV format (9 tab-separated columns): {num}\t{date}\t{company}\t{role}\tEvaluated\t{score}/5\t{pdf_emoji}\t[{report_num}](reports/${report_num}-${slug}-${DATE}.md)\t{one line note}
- Include **URL:** in report header
- Include Machine Summary YAML block"

    timeout 300 claude -p "$worker_prompt" --max-turns 15 > "$log_file" 2>&1

    if ls reports/${report_num}-*.md 1>/dev/null 2>&1; then
      echo "[${id}] DONE: ${company} — ${role}"
    else
      echo "[${id}] FAILED: ${company} — ${role}"
    fi
  '

echo ""
echo "=== Batch complete ==="
echo "Completed: $(grep -c 'completed\|DONE' "$STATE" || echo 0)"
echo "Failed: $(grep -c 'failed' "$STATE" || echo 0)"
echo ""
echo "Run 'node merge-tracker.mjs' to merge results into applications.md"
