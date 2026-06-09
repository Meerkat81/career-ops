# Interview Intel: Amplemarket -- Fullstack Software Engineer

**URL:** https://job-boards.eu.greenhouse.io/amplemarket/jobs/4488062101
**Legitimacy:** High Confidence
**Report:** [037](../reports/037-amplemarket-2026-06-06.md)
**Researched:** 2026-06-08
**Sources:** 6 Glassdoor reviews, 1 company blog post, Crunchbase/Tracxn financials
**Audiences covered:** recruiter-screen, hiring-manager, peer-tech, panel-mixed

---

## Process Overview

- **Rounds:** 6 rounds, ~2-3 weeks end-to-end
- **Format:** TestGorilla assessment → Recruiter screen (15 min) → Technical interview with Backend Engineer → Technical interview with CEO → Technical interview with Engineering Manager → Founder interview → Reference checks
- **Difficulty:** 2.8/5 (Glassdoor avg, 6 reviews)
- **Positive experience rate:** 39% (small sample -- one reviewer called the tech steps "some of the best")
- **Known quirks:** CEO conducts a technical round with a scraping exercise. TestGorilla is ~100 questions in 45 minutes mixing basic trivia with theoretical code puzzles.
- **Sources:** [Glassdoor](https://www.glassdoor.com/Interview/Amplemarket-Software-Engineer-Interview-Questions-EI_IE1871435.0,11_KO12,29.htm), [Amplemarket Blog](https://www.amplemarket.com/blog/from-applicant-to-a-player-how-to-ace-your-interviews-with-amplemarket)

---

## Audience Map

- **Round 0** (TestGorilla assessment, ~45 min) → `peer-tech` (automated screening)
- **Round 1** (recruiter screen, 15 min) → `recruiter-screen`
- **Round 2** (technical with Backend Engineer, ~60 min) → `peer-tech`
- **Round 3** (technical with CEO, ~60 min) → `panel-mixed` (CEO = technical + vision)
- **Round 4** (technical with Engineering Manager, ~45 min) → `hiring-manager`
- **Round 5** (founder interview, ~30-45 min) → `panel-mixed`

---

## Round-by-Round Breakdown

### Round 0: TestGorilla Assessment -- audience: `peer-tech`

**COMPLETED 2026-06-09** -- SE 24th %ile, REST 98th %ile, Backend 88th %ile

- **Duration:** ~35 minutes (3 timed sections)
- **Conducted by:** Automated (TestGorilla platform)
- **What they evaluate:** Software engineering fundamentals, REST API knowledge, backend engineering
- **Actual format (confirmed):**
  - **Section 1: Software Engineer** -- 16 questions, 10 min (~37 sec/q). Pure recall: Big-O, data structures, OOP, SOLID, JS gotchas.
  - **Section 2: Creating REST APIs** -- 12 questions, 10 min (~50 sec/q). HTTP methods, status codes, REST constraints, resource naming, auth.
  - **Section 3: Backend Engineer** -- 10 questions, 15 min (~90 sec/q). SQL, ACID, normalization, indexing, Node.js, security. May include code snippets.
  - **Total: 38 questions in 35 minutes.** No Rails/React/CSS sections.
- **How to prepare:**
  - **Section 1 is the tightest** -- 37 sec/question means pure recall. Drill Big-O tables and JS gotchas until instant.
  - **Big-O & data structures:** Array, hash table, linked list, BST, stack/queue complexity. Binary search O(log n). Mergesort O(n log n) guaranteed. Quicksort O(n²) worst case.
  - **OOP & SOLID:** Four pillars (encapsulation, abstraction, inheritance, polymorphism). SOLID acronym cold.
  - **JS gotchas:** `typeof null === "object"`, `0.1 + 0.2 !== 0.3`, `==` vs `===`, `var`/`let`/`const` scoping, closures in loops.
  - **REST:** HTTP methods (PUT is idempotent, POST is not), status codes (201, 204, 401 vs 403, 400 vs 422), resource naming (nouns, plural, no verbs), JWT is signed not encrypted.
  - **Backend:** SQL JOINs, ACID, normalization (2NF partial deps, 3NF transitive deps), indexes (speed reads, slow writes), Node event loop (single-threaded, non-blocking I/O), parameterized queries for SQLi, bcrypt for passwords.

### Round 1: Recruiter Screen -- audience: `recruiter-screen`

**YOU ARE HERE**

- **Duration:** 15 minutes
- **Conducted by:** People Success Specialist
- **What they evaluate:** Motivation, company knowledge, logistics (notice period, salary, availability)
- **How to prepare:** See Audience pack below

### Round 2: Technical Interview -- audience: `peer-tech`

- **Duration:** ~60 minutes
- **Conducted by:** Backend Engineer on the team
- **What they evaluate:** Coding ability, problem-solving approach
- **Reported content:**
  - "Exercise in a programming language of your choice" -- [source: Glassdoor 2026]
  - Live coding / pair programming format -- [source: Glassdoor 2026]
  - One reviewer mentioned "live coding session during tech Q&A" as "some of the best technical steps" -- [source: Glassdoor 2026]
- **How to prepare:** Practice coding in Ruby or JavaScript. Be ready to talk through your approach out loud.

### Round 3: Technical with CEO -- audience: `panel-mixed`

- **Duration:** ~60 minutes
- **Conducted by:** CEO (Micael Oliveira)
- **What they evaluate:** Technical depth + vision alignment
- **Reported content:**
  - "Scraping exercise" followed by broader technical questions -- [source: Glassdoor 2026]
  - Described as "the most challenging round" -- [source: Glassdoor 2026]
- **How to prepare:** Review web scraping concepts (HTTP requests, parsing HTML, handling pagination, rate limiting). Be ready for broader architecture questions. This is the hardest round.

### Round 4: Engineering Manager -- audience: `hiring-manager`

- **Duration:** ~45 minutes
- **Conducted by:** Engineering Manager
- **What they evaluate:** Previous experience, technical decision-making, team fit
- **Reported content:**
  - "Previous experience and technical discussion" -- [source: Glassdoor 2026]
- **How to prepare:** STAR stories ready. Focus on Green Ocean Sciences experience.

### Round 5: Founder Interview -- audience: `panel-mixed`

- **Duration:** ~30-45 minutes
- **Conducted by:** Founders (Joo Batalha, Lus Batalha)
- **What they evaluate:** Cultural fit, mission alignment, technical competency
- **Reported content:**
  - "Range from role-specific to mission-focused questions" -- [source: Amplemarket blog]
  - "The bar is high, so stay sharp -- it's not over till it's over!" -- [source: Amplemarket blog]
- **How to prepare:** Know the product (Amplemarket Duo, AI Sales Copilot). Demonstrate genuine interest in the sales AI space.

---

## Likely Questions (per audience)

### Audience: `recruiter-screen`

**"Walk me through your background"** (60-90 seconds)
> "I'm a full stack developer based in Stockholm. I spent 3 years at Green Ocean Sciences building production apps in React, Ruby on Rails, and PostgreSQL -- the same stack Amplemarket uses. I owned features end-to-end, from the React frontend to the Rails API to the database. Before that I was in construction project management for 10 years, which is why I'm unusually good at coordinating across teams and shipping on schedule. Right now I'm part-time at a startup called SuperAssets building in Next.js. I'm looking for a full-time role where I can go deeper on the Rails/React stack, and Amplemarket is my top choice because the stack is an exact match and the product is genuinely interesting."

**Comp expectation**
- Amplemarket lists "competitive salary" without a range
- Glassdoor data is thin for this company
- **Recommended script:** "I'm calibrating to market for mid-level fullstack roles in EMEA remote companies. Can you share the band for this position? I'm flexible on structure -- what matters is the total package and the opportunity."
- Casey's target from profile.yml: SEK 2.8K-3K (note: this seems very low -- may need to verify/update)

**Why Amplemarket?**
> "Three things: the stack is exactly what I've been building in for 3 years -- Rails, React, Postgres. The product solves a real problem in sales automation, and I can see how the AI copilot fits. And the remote EMEA setup works perfectly from Stockholm."

**Location / remote / availability**
- Stockholm, Sweden. EU work authorization. No visa needed.
- Available to start: confirm your actual notice period / availability

**Background red flags to address**
- **Career transition (construction → dev):** "I made a deliberate transition -- got my CS degree in 2020, then spent 3 years as a full stack dev at Green Ocean Sciences. The construction background gives me a project execution mindset that most developers don't have."
- **Employment gap (May 2023 - Jul 2025):** Be ready to explain. If it was job searching + learning, say so directly.

### Audience: `hiring-manager` (Engineering Manager)

**"Why this role, why now?"**
> "I've been building in Rails and React for 3 years, and I want a team where that's the core stack, not a legacy system being migrated away from. Amplemarket is actively building in Rails/React/Postgres and shipping AI features on top -- that's the direction I want to grow in."

**"What would your first 90 days look like?"**
> "First 2 weeks: understand the codebase, set up local dev, ship a small bug fix or feature to get through the full deploy cycle. Weeks 3-6: take on a real feature, probably paired with someone at first. By month 3: independently owning features end-to-end, which is what I was doing at Green Ocean after ramping up."

**"Tell me about a technical decision you made"**
> Use QuickBooks Integration story -- choosing to build the full integration in-house vs using a third-party billing service. Trade-offs: more control but more maintenance.

**Sharp questions to ask back:**
- "Amplemarket launched Duo (the AI Sales Copilot) -- how has that changed what the engineering team works on day-to-day?"
- "What does the deploy process look like? How often does code ship to production?"
- "What's the biggest technical challenge the team is dealing with right now?"

### Audience: `peer-tech` (Backend Engineer, CEO rounds)

**Live coding (Round 2)**
- Expect a practical problem, not LeetCode algorithms
- You can choose your language -- **use Ruby or JavaScript** (your strongest)
- Talk through your approach before coding
- Write clean, readable code. Name variables well.
- Don't forget edge cases and basic error handling

**Scraping exercise (Round 3 -- CEO)**
This is the hardest round. Review:
- Making HTTP requests (Net::HTTP in Ruby, fetch/axios in JS)
- Parsing HTML (Nokogiri in Ruby, cheerio in Node.js)
- Handling pagination (following "next" links)
- Extracting structured data from unstructured HTML
- Rate limiting / being a good citizen
- Error handling (timeouts, 404s, redirect chains)

**Technical questions likely to come up** [inferred from JD]:
- "How would you design a feature that processes data from multiple external APIs?" -- Map to QuickBooks + Sicpa integrations
- "Walk me through how you'd build [X feature] in Rails" -- Be ready to talk models, controllers, migrations, routes
- "How do you handle N+1 queries in Rails?" -- includes/eager_load/preload
- "How do you manage state in a React application?" -- useState, useContext, when to lift state up
- "Tell me about your testing approach" -- Map to Jest testing suite story

**Reverse questions for peers:**
- "What does code review look like here? How many approvals before merge?"
- "What surprised you most about the codebase when you joined?"
- "How does the team handle on-call / production incidents?"

### Audience: `panel-mixed` (Founders)

**"Why Amplemarket?"**
> Lead with product knowledge: "I've looked at the platform -- the Duo copilot is a smart move. Sales teams need AI that augments reps, not replaces them. I want to build that kind of product."

**"What excites you about our mission?"**
> "I've seen firsthand at startups how painful manual sales processes are. Automating the repetitive parts so salespeople can focus on relationships -- that's a real problem worth solving."

**Cultural fit -- demonstrate their values:**
- "Make things people want" → "At Green Ocean, I worked directly with customers to prioritize features. The best feature I built (QuickBooks billing) came from a customer pain point, not a roadmap."
- "Curious optimist" → Show enthusiasm without being naive
- "Professional sports team" → "I shipped features weekly. I take ownership."

---

## Story Bank Mapping

| # | Audience | Likely question/topic | Best story | Fit |
|---|----------|----------------------|------------|-----|
| 1 | recruiter-screen | "Walk me through your background" | Combine QuickBooks + Jest stories into narrative | strong |
| 2 | recruiter-screen | Career transition | Skyhouse → CS degree → Green Ocean narrative | strong |
| 3 | hiring-manager | Technical ownership | QuickBooks Billing Integration | strong |
| 4 | hiring-manager | Impact / automation | CoA Report Automation | strong |
| 5 | peer-tech | Testing approach | Jest Testing Suite | strong |
| 6 | peer-tech | API integration | QuickBooks + Sicpa Blockchain | strong |
| 7 | peer-tech | Full stack debugging | SaltStack Remote Hardware | partial (infra, not web) |
| 8 | panel-mixed | Cross-functional collaboration | Skyhouse Coordination | strong |
| 9 | panel-mixed | Working with customers | QuickBooks (customer-driven feature) | strong |

**Gaps:**
- No story about **web scraping** (CEO round requires this). Consider: have you ever scraped data or automated data extraction? If so, draft a story. If not, practice the mechanics.
- No story about **working with AI/ML features**. You use Claude Code daily -- could frame career-ops pipeline as a relevant example if asked.

---

## Technical Prep Checklist

### TestGorilla Assessment (immediate priority -- 38 questions, 35 min, 3 sections)

- [ ] **Section 1: Software Engineer** (16q / 10 min) -- Big-O tables, data structure trade-offs, OOP pillars, SOLID, JS gotchas (`typeof null`, `0.1+0.2`, scoping)
- [ ] **Section 2: Creating REST APIs** (12q / 10 min) -- HTTP methods (safe/idempotent), status codes (201, 204, 401 vs 403, 400 vs 422), REST constraints, resource naming, JWT/auth
- [ ] **Section 3: Backend Engineer** (10q / 15 min) -- SQL JOINs, ACID, normalization (2NF vs 3NF), indexing, Node event loop, caching, security (SQLi, hashing vs encryption)

### Later Rounds

- [ ] **Web scraping in Ruby or Node** -- HTTP requests, HTML parsing, pagination -- why: "CEO round includes a scraping exercise" [source: Glassdoor 2026]
- [ ] **System design basics** -- how to design a feature end-to-end in Rails/React -- why: "broader technical questions in CEO round"
- [ ] **STAR stories polished** -- 60-second versions of top 5 stories -- why: "Engineering Manager round focuses on previous experience"

---

## Company Signals

### To the recruiter
- **Volunteer:** Stockholm location, EU work authorization, genuine enthusiasm for Rails/React stack match
- **Don't volunteer:** hard comp number first (let them share the band)
- **Red flags they screen for:** "applying everywhere" energy, comp mismatch, unavailability

### To the hiring manager
- **Lead with:** "I've been building in the exact same stack for 3 years -- Rails, React, Postgres. I ship features end-to-end."
- **Vocabulary:** "Amplemarket Duo", "AI Sales Copilot", "make things people want" (their core value)
- **Sharp questions:** Ask about Duo's impact on engineering priorities, deploy cadence, biggest current challenge

### To the peer / technical panel
- **Lead with:** Rails + React production experience, Jest testing, QuickBooks/API integration
- **Avoid:** overselling AI/ML experience you don't have
- **Reverse questions:** code review process, deploy frequency, what surprised them about the codebase

### To founders
- **Lead with:** product knowledge (Duo, AI copilot), customer empathy, startup experience
- **Vocabulary:** "make things people want", "professional sports team", "curious optimist"
- **Avoid:** generic startup enthusiasm without specifics about Amplemarket

---

## TestGorilla Quick Reference (study this first)

Since you're at the TestGorilla stage right now, here's a rapid-fire review organized by the 3 actual test sections:

**Section 1: Software Engineer (16q / 10 min -- fastest section)**

Big-O (memorize):
- Array: access O(1), search O(n), insert O(n), delete O(n)
- Hash table: search/insert/delete O(1) avg, O(n) worst
- Linked list: access O(n), search O(n), insert O(1) at known position
- BST: search/insert/delete O(log n)
- Binary search: O(log n), requires sorted input
- Quicksort: avg O(n log n), worst O(n²). Mergesort: O(n log n) guaranteed.

OOP pillars: Encapsulation, Abstraction, Inheritance, Polymorphism
SOLID: Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, Dependency Inversion

JS gotchas:
- `typeof null === "object"`, `typeof NaN === "number"`
- `0.1 + 0.2 !== 0.3` (floating point)
- `var` = function-scoped + hoisted; `let`/`const` = block-scoped
- `==` coerces types; `===` does not
- Closures capture by reference -- classic loop bug fixed with `let` or IIFE

**Section 2: Creating REST APIs (12q / 10 min)**

HTTP methods: GET (safe, idempotent), POST (neither), PUT (idempotent, not safe), PATCH (neither), DELETE (idempotent, not safe)
- PUT is idempotent, POST is not -- common trap

Status codes:
- 200 OK, 201 Created (POST), 204 No Content (DELETE/PUT success, empty body)
- 301 Moved Permanently, 304 Not Modified
- 400 Bad Request (malformed), 401 Unauthorized ("who are you?"), 403 Forbidden ("I know you, no"), 404 Not Found, 409 Conflict, 422 Unprocessable (validation failed), 429 Too Many Requests
- 500 Internal, 502 Bad Gateway, 503 Unavailable, 504 Timeout

REST constraints: Client-server, Stateless, Cacheable, Uniform interface, Layered, Code-on-demand (optional)
Resource naming: nouns, plural (`/users/42/orders`), no verbs in paths
JWT: `header.payload.signature` -- signed, NOT encrypted. Don't put secrets in payload.
Versioning: URI (`/v1/users`) is most common answer.

**Section 3: Backend Engineer (10q / 15 min -- may include code snippets)**

SQL JOINs: INNER (matching only), LEFT (all left + matches), RIGHT (all right + matches), FULL OUTER (everything), CROSS (Cartesian)
Normalization: 1NF (atomic values), 2NF (no partial deps on composite key), 3NF (no transitive deps)
ACID: Atomicity (all-or-nothing), Consistency (valid state→valid state), Isolation (no interference), Durability (survives crashes)
Indexing: speeds reads, slows writes, costs storage. B-tree. Index columns you filter/join/sort on.
SQL vs NoSQL: SQL = schema, consistency, joins. NoSQL = flexible schema, horizontal scaling, eventual consistency.
Caching: cache-aside (check cache → fall back to DB → populate cache). TTL to expire. Redis = common.
Scaling: vertical (bigger machine) vs horizontal (more machines, requires statelessness)
Security: SQL injection → parameterized queries. Passwords → hash + salt (bcrypt/argon2). Hashing is one-way, encryption is reversible.
Node.js: single-threaded event loop, non-blocking I/O. CPU-bound work blocks → use worker threads.
- Event loop: timers → pending → poll → check (setImmediate) → close. `process.nextTick` and Promise microtasks run between phases.
- `Promise.all` (fail-fast) vs `Promise.allSettled` (waits for all) vs `Promise.race` (first settled)
