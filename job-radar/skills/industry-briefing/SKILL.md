---
name: industry-briefing
description: Weekly executive intelligence briefing on the user's industry - the 10-15 most significant developments of the past 7 days ranked by business impact, their immediate / 6-12 month / long-term implications, what leadership teams are likely discussing, hiring and career implications (functions growing or shrinking, skills and roles rising or declining), heat signals (rising, emerging, disruptions, risks), competitor momentum, ten discussion-ready talking points, and what it all means for the user's target role. Use when the user says "industry briefing", "what's happening in my industry this week", "weekly industry tracker", "industry news for my interviews", "talking points for networking", or "set up a weekly briefing".
---

# Industry briefing: interpretation, not news

Prepare a briefing the way a consulting partner would for a senior leader: what happened, why it matters, what leaders will do about it, and what it means for the user's career. **Do not summarise articles.** Every development gets interpreted; every interpretation is labelled as inference.

## Inputs

From the user's message, else `resume.md` (load per `../../references/resume-source.md`, run the finder script first): **industry** (the domains of their recent employers/clients unless stated), **target role**, **seniority**, **geography** (target locations). Ask only if the industry can't be inferred. State the window: the 7 days ending today (use today's date).

## Research

Read `references/briefing-method.md`. Run many searches in parallel across the categories (M&A, funding, leadership changes, launches, technology, expansion, regulation, competitive moves, customer behaviour, disruptions), scoped to the industry, the geography and the past 7 days, plus global developments that clearly affect the user's market. Prefer primary sources (company announcements, regulators, filings) and established business press; use trackers and newsletters to find items, then confirm. Every development needs a date inside the window and a source. If fewer than 10 significant developments exist in the window, say so and extend to 14 days for the remainder, marked as such.

## Write

Follow the method for ranking, interpretation and the hiring lens. Keep **facts** (what happened, with source) visibly separate from **inferences** (impact, leadership thinking, hiring implications). Talking points are written in the user's voice per the networking plugin's `voice.md` if installed: specific, opinionated, no clichés.

## Output

Offer to save as a document if the user wants to keep weekly issues; otherwise reply in chat:

```
# <Industry> briefing · week ending <date> · <geography>
For: <target role>, <seniority>

## Executive summary              (top 5 developments, one line each: what + why it matters)
## Industry developments          (ranked table: # · development · date · category · who's affected · why it matters · source)
## Strategic interpretation       (per top developments: immediate · 6–12 months · long-term; business consequences only)
## Leadership perspective         (per major development: what CEOs discuss · what worries leaders · opportunities pursued · decisions under consideration)
## Hiring & career implications   (functions expanding · shrinking · skills rising · leadership capabilities in demand · emerging roles · declining roles; each with the why)
## Industry heat signals          (rising · emerging · potential disruptions · risks to monitor; signals, not speculation)
## Competitor intelligence        (gaining momentum · under pressure · investing aggressively · likely to create hiring opportunities; reasoning for each)
## Executive talking points       (10, each tied to a development number)
## What this means for you        (opportunities to watch · skills to develop · themes to understand better · companies to monitor · risks; specific to the target role and seniority)
Sources (numbered, dated)
```

After delivering, offer once: if a scheduling tool is available, to set up this briefing as a weekly scheduled task (pick a day and time with the user).

## Save it

Write the result to `research/industry-briefing-<YYYY-MM-DD>.md` under the output root, following `../../references/output-files.md`: the full briefing. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- No article summaries without interpretation; no generic career advice; nothing beyond the sections above.
- Facts carry a date and source; inferences are labelled. Rank by business impact, not media attention.
- Don't repeat last week's items as new; if a story continues, report only what changed.
