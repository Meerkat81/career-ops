# Story Bank — Master STAR+R Stories

This file accumulates your best interview stories over time. Each evaluation (Block F) adds new stories here. Instead of memorizing 100 answers, maintain 5-10 deep stories that you can bend to answer almost any behavioral question.

## How it works

1. Every time `/career-ops oferta` generates Block F (Interview Plan), new STAR+R stories get appended here
2. Before your next interview, review this file — your stories are already organized by theme
3. The "Big Three" questions can be answered with stories from this bank:
   - "Tell me about yourself" → combine 2-3 stories into a narrative
   - "Tell me about your most impactful project" → pick your highest-impact story
   - "Tell me about a conflict you resolved" → find a story with a Reflection

## Stories

### [Full Stack Ownership] QuickBooks Billing Integration
**Source:** Report #037 — Amplemarket — Fullstack Software Engineer
**S (Situation):** Green Ocean Sciences needed payment processing for customer subscriptions
**T (Task):** Build end-to-end billing: React form, Rails API, PostgreSQL schema, QuickBooks API
**A (Action):** Designed React payment form, built Rails service object for QuickBooks API, wrote Postgres migrations for billing records
**R (Result):** Customers could self-serve billing; reduced manual invoicing
**Reflection:** I'd add better error handling and retry logic from day one — payment integrations need to be bulletproof
**Best for questions about:** ownership, full-stack work, shipping features, complex integrations, working with external APIs

### [Automation] Certificate of Analysis Report Automation
**Source:** Report #037 — Amplemarket — Fullstack Software Engineer
**S (Situation):** Customers were manually creating CoA reports in Excel — slow and error-prone
**T (Task):** Automate the entire report generation pipeline
**A (Action):** Built report generation in Rails with data from Postgres, rendered as formatted output, integrated with existing workflow
**R (Result):** Eliminated manual Excel workflow entirely; faster, more accurate reports
**Reflection:** Next time I'd build a preview/draft step so users can review before finalizing
**Best for questions about:** automation, impact, user workflow improvement, initiative

### [Quality] Building a Jest Testing Suite from Scratch
**Source:** Report #037 — Amplemarket — Fullstack Software Engineer
**S (Situation):** Express backend had no tests — bugs were caught in production
**T (Task):** Build comprehensive test coverage from scratch
**A (Action):** Wrote Jest test suite covering API endpoints, edge cases, and integration points
**R (Result):** Caught bugs before deployment; gave team confidence to refactor
**Reflection:** Starting with tests is cheaper than adding them later — I'd push for TDD from day one on a new project
**Best for questions about:** quality, testing, best practices, debugging, technical initiative

### [Cross-functional] Skyhouse Program Coordination
**Source:** Report #037 — Amplemarket — Fullstack Software Engineer
**S (Situation):** 4 high-rise projects needed MEP, structural, and architectural coordination
**T (Task):** Minimize rework by identifying conflicts before field construction
**A (Action):** Created coordination workflows, ran cross-trade meetings, managed RFI process
**R (Result):** Reduced rework; projects delivered on schedule
**Reflection:** The same principle applies to software — catching integration issues early through communication saves weeks of debugging
**Best for questions about:** cross-functional collaboration, communication, conflict resolution, delivery, leadership

### [Proactive] SaltStack Remote Hardware Management
**Source:** Report #037 — Amplemarket — Fullstack Software Engineer
**S (Situation):** Lab devices in the field needed configuration and troubleshooting
**T (Task):** Set up remote management to avoid on-site visits
**A (Action):** Implemented SaltStack for remote device config, built monitoring to catch issues early
**R (Result):** Could fix hardware issues remotely; reduced support response time
**Reflection:** Proactive monitoring beats reactive firefighting every time
**Best for questions about:** initiative, problem-solving, infrastructure, DevOps, proactive approach
