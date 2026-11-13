---
name: hiring-radar
description: Finds and ranks 15-20 companies most likely to hire the user right now, using live hiring signals (funding, leadership hires, expansion, launches and deals, public hiring talk) instead of brand names - scores each company, maps the roles and problems behind the signals, names the hiring managers to target, gives a repeatable contact-discovery system and a signal-based outreach hook per company, and surfaces 2-3 hidden gems. Use when the user says "which companies should I target", "find companies that are hiring for my role", "build my target company list", "hiring signals in my industry", "where should I apply in Dubai/India/remote", or "who is likely to hire a <role> now".
---

# Hiring radar: target the companies most likely to hire you now

Rank companies by **signal-driven hiring probability**, not brand. Every company on the list must be backed by real, dated, sourced signals.

## Step 0: Inputs (resume first, ask last)

1. Load the resume per `../../references/resume-source.md` (run the finder script first). From it take:
   - **Role and seniority**: current/target title, years, leadership scope (frontmatter `targets.roles` wins).
   - **Industry**: the domains of the user's employers and clients, unless the user names one.
   - **Geography**: frontmatter `targets.locations` and `work_mode`.
   - **Hard exclusions**: anything the user says they don't want (stacks, cities, company types).
2. If the user uploaded their own signals guide or framework, read it and use its categories and weights in place of the defaults in `../../references/heat-signals.md`, keeping the same output.
3. Ask only for what's still missing (industry, role, geography), in one message. If the user isn't there to answer, state the assumption and continue.

State the inputs used in one line at the top of the output.

## Step 1: Find candidates

Read `../../references/heat-signals.md`. Run several web searches in the same turn, scoped to the industry × geography × last 6 months (use today's date). Search by signal type, not by company name, for example:
- `<industry> <city> raises Series A OR Series B OR funding <month/year>`
- `appoints CTO OR "VP Engineering" OR "Head of Engineering" <industry> <geography>`
- `<industry> opens office OR expands to <city> OR launches in <country>`
- `<industry> launches OR partners with OR wins contract <geography>`
- `"we're hiring" OR "growing our team" <role> <city>` (exec posts, careers pages)
- Funding/news trackers for the region (e.g. Inc42, Entrackr, YourStory for India; Wamda, MAGNiTT, Gulf News/Arabian Business for GCC; TechCrunch, Crunchbase News globally).

Split the research by **geography segment** (each target location or remote market in the resume is its own segment) and run searches for every segment, so no target market is silently skipped. If a segment yields nothing solid, say so in one line.

If a source page can't be opened, try another outlet covering the same event before dropping it.

**Search budget.** Run at least 20 searches across segments and signal families before cutting the list. Weekly funding roundups (e.g. Entrackr's weekly funding report, Inc42 "Funding Galore", MAGNiTT/Wamda monthly GCC round-ups, Crunchbase News "biggest rounds of the week") are the fastest way to collect many dated capital signals at once; open the last 8–12 weeks of them.

**Second pass if short.** If fewer than 15 companies qualify after the first pass, widen in this order and say which widening you used: (1) adjacent industries where the user's function is core (any software-product company using the user's skills, e.g. fintech, healthtech, edtech, SaaS for an engineer); (2) global capability centres / tech hubs opening or expanding in the user's cities; (3) signal window from 6 to 9 months, scored with the recency multiplier. Never widen past the user's exclusions.

Collect 25–30 raw candidates, then cut to 15–20 with at least one signal from the last 6 months and plausible fit with the user's role. Drop companies that conflict with the user's exclusions or geography. Use the job-posts check only to confirm, never as the only signal.

## Step 2: Score signals per company

For each company, list every signal with **date, one-line fact and source link**, tag its category, and score it with the formula in `../../references/heat-signals.md` (category weight × recency, capped at 10). Never count the same event twice under two categories.

## Step 3: Rank and tier

Sort by score. Tier:
- **Target Immediately** (7–10): a strong capital or leadership signal in the last 90 days, plus at least one more signal.
- **Monitor Closely** (4–6.9): one strong fresh signal, or several mid-weight ones.
- **Early Signal** (<4): one older or weak signal; check again in 4–6 weeks.

For each company, explain **why it sits where it does** relative to its neighbours (one or two sentences) and **what hiring need is emerging**.

## Step 4: Role mapping

Per company, predict, from the signals and the user's level:
- 1–3 roles relevant to the user they're likely to open (or already have open).
- The problems they're likely facing (e.g. "post-Series B: rebuild MVP for scale, add observability, hire leads for new squads").
Label these as inferences.

## Step 5: Targeting

Per company: the 2–3 hiring-manager titles to target for the user's function (the person who owns the problem, usually 1–2 levels above the role), and the functions/teams to focus on. Name a person only when public sources (company site, press release, LinkedIn post, news) show them in that role; mark the date seen.

## Step 6: Contact discovery system

Give the repeatable system from `references/contact-discovery.md`, adapted to the user's geography and function (search strings filled with their titles and cities). Do this once for the whole list, not per company.

## Step 7: Outreach angle

Per company, one hook (1–2 sentences) built from that company's strongest signal and the user's most relevant proof point from the resume, e.g. "You just raised $X to expand into KSA; I led the team that took <product> to <N> users across <regions>." No generic lines; each hook must be impossible to reuse for another company. Follow the networking plugin's voice rules if installed.

## Step 8: Hidden gems

Pick 2–3 companies that aren't obvious (small, recently stealth, adjacent industry, newly entering the user's geography, a non-tech company building an in-house team) but show strong early signals. Explain what makes each a gem.

## Output

Reply in chat in this order:

1. One line: inputs used (role, seniority, industry, geography, exclusions, date of research).
2. **Ranked table**: `# | Company | City/mode | Score | Tier | Top signals (dated) | Likely roles for you | Target titles`.
3. **Company notes**, grouped by tier (Target Immediately → Monitor Closely → Early Signal). Each one has signals by category, why it ranks there, the emerging need, likely problems, functions to focus on, and the outreach hook.
4. **Hidden gems** (2–3), same fields.
5. **Contact discovery system** (once).
6. **Sources**: every link used.

If the output is long, offer once to save it as a document. Do not add advice beyond these sections.

## Save it

Write the result to `research/hiring-radar-<YYYY-MM-DD>.md` under the output root, following `../../references/output-files.md`: the ranked table and the per-company detail. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- Read the `observed:` block in `resume.md` if it has one: the titles companies actually use for this user's target, so the radar searches for those as well as the ones in `targets.roles`.
- Every signal needs a date and a source. No source, no signal. Mark anything older than 6 months as stale and weight it accordingly.
- Prefer signal strength and recency over brand name. A well-known company with no fresh signals ranks below a small one with strong ones.
- Respect the user's exclusions as hard filters.
- Public, professional information only. No personal phone numbers, home addresses or personal social accounts. Email addresses are patterns to verify, never presented as confirmed.
- Never invent companies, funding amounts, executives or dates. If research is thin for a geography, say so and return fewer companies rather than padding.
