---
name: company-intel
description: Pre-application and pre-interview brief on an employer - what the company does, stage and health, recent news, team and product context, culture and interview signals, likely pain points the role solves, and personalization hooks for outreach and interviews. Use when the user says "research this company", "what should I know about X before applying", "company background for my interview", "is X a good place to work", or "find hooks for my cold email to X". For hiring-probability analysis of one company (signals, score, timeline, roles likely to open, red flags), use hiring-deep-dive instead.
---

# Company intel

Give the user a one-page brief on an employer, aimed at applying, networking and interviewing.

## Inputs

- Company name (and the JD or role, if available - it focuses the research on the relevant team).
- Optional: region/office the user is targeting.

## Process

Use web search (several queries in one turn). Prefer primary sources: company site, careers page, engineering/product blog, press releases, annual reports/filings, founder or exec posts. Use review sites and news for signals, labelled as such.

Collect:

1. **Snapshot**: what they sell, to whom, business model, size, HQ and offices, public/private, funding stage and latest round or financial results.
2. **Momentum (last 12 months)**: launches, funding, acquisitions, expansions, layoffs, leadership changes, regulatory issues. Date every item.
3. **Team context** for the role: which product/team, its tech or tools (from JD, blog, job posts), who leads it if publicly listed.
4. **Likely pain points**: what problem this hire probably solves, inferred from the JD + momentum. Label as inference.
5. **Culture and process signals**: values page, work mode, review-site themes (patterns, not single reviews), interview process reports if available.
6. **Hooks**: 3–5 specific, recent, verifiable things the user can reference in outreach or interviews ("your Q3 launch of X", "the engineering post on migrating to Y").
7. **Questions to ask** in interviews, grounded in the above.

## Output

Reply in chat with headed sections matching the list above, each ≤5 bullets, then a **Sources** list with links. If the user wants to keep it, offer to save as a document.

## Save it

Write the result to `research/<company>-intel.md` under the output root, following `../../references/output-files.md`: the brief and the hooks. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- Date-stamp news; flag anything older than 12 months as possibly stale.
- Separate fact (with source) from inference.
- Do not dig into private individuals' personal lives; stick to public professional information (role, public posts, talks).
