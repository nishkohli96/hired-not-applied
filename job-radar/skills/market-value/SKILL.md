---
name: market-value
description: Benchmarks the realistic market compensation for a specific role at a target company before salary discussions - target-company pay structure (fixed, variable, bonus, long-term incentives; conservative / likely / aggressive), competitor pay ranked from premium to below market, market percentiles (25th, median, 75th, top quartile) across organisation tiers in the geography, a consolidated range with a stretch range, and how the company positions pay (brand, bonus, promotion, equity). Use when the user asks "what's my market value", "what does X pay for this role", "salary benchmark for <role> in <city>", "what CTC should I expect", "compensation range at X", or "how much do competitors pay".
---

# Market value: compensation benchmark for one role

Think like a compensation consultant preparing a benchmark report, not a recruiter. Realism over optimism. Compensation intelligence only: **no negotiation, interview or career advice.**

## Inputs

1. **Target company**, **target role**, **geography**, **industry**: from the user's message; fill gaps from `resume.md` frontmatter (`targets`) loaded per `../../references/resume-source.md` (run the finder script first).
2. **Years of experience** and scope (team size led, level): from the resume.
3. Optional: a JD or posted salary band, the level/grade they were told, competing offers' structures (not amounts) if the user shares them.

Ask only for the company and role if both are missing. State every other assumption.

## Research (several searches in one turn)

Read `references/comp-method.md` first. Collect **dated** signals from several source types and triangulate; never rely on a single aggregator number:
- Posted salary bands (pay-transparency postings in US states/EU, Gulf postings with stated packages, Indian postings with CTC bands).
- Crowd-sourced data with sample size (e.g. Levels.fyi, Glassdoor, AmbitionBox for India, Blind discussions), noting the level and date.
- Recruitment-firm salary guides for the geography and function (e.g. Michael Page, Hays, Robert Walters, Randstad, Cooper Fitch / Kershaw Leonard for the Gulf, Xpheno / TeamLease for India).
- Company signals: size, funding stage or listing, profitability, recent layoffs, hiring push, equity plans (ESOPs/RSUs), pay philosophy statements.
- Currency and pay conventions for the geography (e.g. Indian CTC components, Gulf tax-free packages with housing/transport allowances, US base + bonus + RSUs).

Record each signal as: source · date · level/years · number · sample size or confidence. If research tools aren't available, say so and give a clearly labelled, wider, lower-confidence estimate.

## Analyse and write

Follow the five steps in `references/comp-method.md`. Show the arithmetic and rationale for every range. Use the local currency and convention (₹ lakh/crore CTC for India, AED/month or year for UAE, USD/year for the US, and so on); state whether figures are annual, gross, and whether they include variable pay and equity.

## Output

Reply in chat (offer to save as a document if long):

```
## Market value: <Role> at <Company>, <Geography> (<currency>, annual, <basis>)
Assumptions: level · years · scope · data date range · confidence (high / medium / low)

### Executive summary            (3–5 bullets incl. the most likely range and where the company sits vs market)
### Target company compensation  (table: component × conservative / likely / aggressive; rationale per column; signals used)
### Competitor comparison        (table: competitor · fixed · variable · total · tier: highest / above market / market / below market; who pays a premium and why)
### Market benchmark             (table: org tier × P25 / median / P75 / top quartile; what separates candidates at each level)
### Consolidated estimate        (target company range · competitor range · market range · most likely range · stretch range; how each was derived)
### Key compensation insights    (below / at / above market · what drives pay here: brand, bonus, promotion, long-term incentives · how this role compares with similar opportunities)
Sources (numbered, dated)
```

## Save it

Write the result to `research/market-value-<company>-<role>.md` under the output root, following `../../references/output-files.md`: the ranges and what drives them. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- Every number traces to cited signals or an explicitly stated assumption; never present a guess as data. Flag old (>12 months) or thin data.
- Keep target company, competitor and market figures clearly separate.
- Prefer ranges over point figures; say what would move an estimate up or down.
- Don't store compensation figures in `resume.md` or any memory file.
- No negotiation scripts, interview tips or career advice.
