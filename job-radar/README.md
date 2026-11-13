# job-radar

Find where to apply before the jobs are advertised. Works across domains, seniority levels and regions.

| Skill | Use it to | Try saying |
|---|---|---|
| `resume-setup` | Save your resume once as `resume.md` with a proof bank; every skill reuses it | "Set up my resume" |
| `hiring-radar` | Rank 15–20 companies most likely to hire you now from dated hiring signals (funding, leadership hires, expansion, launches), with target managers, contact system, hooks and hidden gems | "Which companies should I target?" |
| `remote-radar` | Remote target list you can actually be hired into from your country: open eligible remote roles, remote-first companies by maturity, future remote-hiring signals, opportunity score and tiers, discovery framework | "Find remote jobs and companies for me" |
| `hiring-deep-dive` | One company, read from the inside: dated signals and what they trigger, problems they point to, hiring probability + timeline, roles likely to open, managers to target, outreach angles, red flags | "Deep dive on Payoneer for my role" |
| `company-intel` | One-page employer brief with dated news, pain points and outreach hooks, before you apply or interview | "Research Acme before I apply" |
| `industry-briefing` | Weekly executive briefing: top developments of the past 7 days ranked by business impact, implications, what leaders are thinking, hiring shifts, heat signals, competitor momentum, 10 talking points, what it means for you | "Industry briefing for this week" |
| `market-value` | Compensation benchmark before salary talks: target company (conservative / likely / aggressive), competitors ranked by pay, market percentiles by org tier, consolidated and stretch ranges, what drives pay there | "What does Payoneer pay a Senior Engineer in Gurugram?" |

Shared reference: `references/heat-signals.md` (the signal families, weights and recency multipliers behind every score), `references/output-files.md` (where drafts and briefs are saved).

Once you've picked a job, `job-decode` reads the JD and prepares your application; `networking` reaches the people inside.

Skills read your resume from `~/.hired-not-applied/resume.md` (or `./resume.md`). Run `resume-setup` once; see the root README.

## Install

```bash
/plugin install job-radar --marketplace nishkohli96/hired-not-applied
```
