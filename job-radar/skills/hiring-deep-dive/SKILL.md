---
name: hiring-deep-dive
description: Deep, signal-based hiring intelligence on one target company for the user's role - what is happening inside the company, why the timing is right, every dated hiring signal with what it will trigger, the problems and capabilities it points to, a hiring probability score with timeline, the roles likely to open and what they'd own, which hiring managers and teams to approach, 2-3 insight-led outreach angles, and red flags. Use when the user names one company and asks "should I target X", "is X hiring for my role", "deep dive on X", "hiring signals at X", "what's going on at X and how do I get in", or picks a company from hiring-radar to investigate. For a plain background brief before applying or interviewing, with no hiring-probability analysis, use company-intel instead.
---

# Hiring deep dive: one company, read from the inside

Answer one question with evidence: **will this company hire someone like the user soon, for what, and how do they get in front of the right person?** Brand doesn't count; dated signals do.

This is the single-company companion to `hiring-radar` (which ranks many companies). For a softer pre-interview brief on culture and products, use `company-intel` instead.

## Step 0: Inputs

1. **Company** (required; ask if missing). If ambiguous, confirm which entity, country unit or office.
2. **Role, seniority, geography**: take from the resume per `../../references/resume-source.md` (run the finder script first): target roles, years and leadership scope, target locations, exclusions. The user's message overrides the file. Ask only for what's still missing, in one message.
3. If the user uploaded their own signals framework or company-research guide, use its categories alongside `../../references/heat-signals.md`.

State the inputs in one line at the top of the output.

## Step 1: Research (before writing anything)

Run several searches in the same turn, covering the last 12 months and weighting the last 6. Use today's date.
- Company newsroom/press page, blog, engineering blog, investor relations or filings, annual/quarterly results.
- Funding and deal coverage (regional trackers per `heat-signals.md`), acquisitions, partnerships, large customer wins.
- Leadership changes: new CXOs, VPs, country heads, heads of the user's function; departures.
- Expansion: new offices, countries, hubs, GCC / capability centres, business lines.
- Hiring activity: careers page and job boards for the user's function and geography (count open roles, note seniority and posting dates), exec "we're hiring" posts, hiring events.
- Negative news: layoffs, freezes, restructuring, down rounds, regulatory trouble, leadership exits, M&A uncertainty.
- Review-site and press patterns about the relevant team (patterns only, labelled as such).

If a page can't be opened, find another outlet for the same event. Every fact used later needs a date and a source.

## Step 2: Write the analysis

Read `references/analysis-guide.md` for the method and scoring, then produce the sections below. Bullets, not paragraphs. Every factual bullet ends with a date and a source marker like `[3]` that maps to the Sources list. Label every inference as such.

1. **What's happening**: growth stage, strategy and direction in 3–5 bullets, then recent developments (dated) grouped by type.
2. **Why target now**: timing, growth and hiring-likelihood reasons specific to the user's role. No brand-value arguments.
3. **Signals**: a table `Signal | Date | Family | What it means | Hiring it triggers | Source`. Families from `heat-signals.md` (Capital, Leadership, Expansion, Launches & deals, Hiring voice), plus **Talent movement** (senior hires or team lifts from named companies, alumni flows into the company) from the analysis guide.
4. **What the signals point to**: problems they are likely facing and capabilities they are likely building (inferences, each tied to the signal numbers that support it).
5. **Hiring probability**: score 1–10 (method in the analysis guide), why hiring is or isn't likely, and the expected timeline: **Immediate (0–3 months)**, **3–6 months** or **6–12 months**.
6. **Role mapping** for the user: 1–3 likely roles, each with expected responsibilities and the outcomes the company would expect in the first 6–12 months.
7. **Targeting**: hiring-manager titles to approach (and named people only when a public source shows them in the role, with date), plus the functions/teams to focus on and why.
8. **Outreach angles**: 2–3 angles, each built on a specific signal and one of the user's real proof points from the resume. Format: `Angle name · signal it uses · the insight · opening line`. The opening line must be impossible to reuse for another company. If the networking plugin is installed, write the line in its voice (`voice.md`).
9. **Red flags**: hiring slowdown, layoffs, unstable growth, funding or M&A uncertainty, weak or single-source signals, stack or location mismatch with the user's exclusions. If none found, say what was checked.
10. **Sources**: numbered list of links.

## Save it

Write the result to `research/<company>-deep-dive.md` under the output root, following `../../references/output-files.md`: the signals, score and targets. Then show it in chat as usual and end with one line giving the path.

## Rules

- Do not exceed the brief: no extra sections, generic job-search advice or resume tips.
- No source, no signal. Mark anything older than 6 months as stale; single-source claims are flagged as unconfirmed.
- Public, professional information only. No personal contact details; email addresses only as patterns to verify.
- Never invent funding, people, dates, headcount or roles. If research is thin, say so and lower the confidence of the score.
- Respect the user's exclusions; flag (don't hide) a mismatch.
