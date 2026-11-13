# Hiring heat signals: categories and scoring

Companies hire when something changes. Five signal families predict hiring, in order of strength.

| Family | What counts | Weight | Typical hiring consequence |
|---|---|---|---|
| **Capital** | Funding round, debt raise, IPO filing, acquisition (as acquirer), large revenue/profit milestone, big government or enterprise contract value | 6 | Headcount budget approved; new squads within 1–3 months |
| **Leadership** | New CTO / VP Eng / Head of X / country GM / founder-level hire; new team lead posts | 4 | New leaders hire their own teams within 60–120 days |
| **Expansion** | New office, new country/city, new business line, new tech hub, headcount growth reported | 3 | Local hiring, team-building roles, leads for new sites |
| **Launches & deals** | Product launch, platform rebuild, major partnership, big customer win, regulatory licence | 3 | Delivery pressure; engineering/ops/sales roles for the new thing |
| **Voice** | Execs posting "we're hiring", hiring events, job-post velocity spike, careers-page refresh, employer-branding push | 1.5 | Confirms intent; weak alone |

**Explicit headcount statements** ("hiring 300 engineers by year-end", "doubling the team") score at Capital weight (6), because they mean budget is approved, whatever family the announcement came from.

Negative signals (subtract, and mention): layoffs or hiring freeze in the last 6 months (−3), pending acquisition or merger of the company itself (−2), leadership exits without replacement (−1), down-round or runway concerns (−2), most relevant open roles in a stack or location the user excludes (−1).

## Recency multiplier

| Age of signal | Multiplier |
|---|---|
| 0–30 days | 1.0 |
| 31–90 days | 0.8 |
| 91–180 days | 0.5 |
| >180 days | 0.2 (stale) |

## Score (1–10)

`score = min(10, Σ(weight × recency) + breadth bonus − negatives)`

- **Breadth bonus**: +1 if signals come from 3 or more families.
- Round to one decimal. Floor at 1.
- Calibration check: one fresh (≤30 days) funding round alone ≈ 6 (Monitor Closely); fresh funding + a new engineering leader ≈ 10 (Target Immediately); a 4-month-old office lease alone ≈ 1.5 (Early Signal). If your scores don't land near these anchors, you've mis-weighted something.
- Count each real-world event once, in its strongest family (a funding announcement that also mentions "expanding to Dubai" is Capital, plus Expansion only if the expansion is a separate concrete step like a new office).

## Fit filter (apply before scoring)

Keep only companies where the user's role plausibly exists: their function is core to the product (e.g. engineering at a software company), or the signal explicitly creates that function. Note the fit in one line.

## Sources to check by geography

- **India**: Inc42, Entrackr, YourStory, Economic Times Tech, VCCircle, Tracxn/Venture Intelligence summaries, company LinkedIn pages.
- **GCC / UAE**: MAGNiTT, Wamda, Arabian Business, Gulf News, Khaleej Times, Zawya, Hub71 and DIFC Innovation Hub announcements.
- **Global / remote**: TechCrunch, Crunchbase News, Axios Pro, Sifted (Europe), The Information headlines, company blogs and press pages.
- **Any**: the company's press page, careers page, exec LinkedIn posts, job boards for posting velocity.
