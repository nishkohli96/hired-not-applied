# Analysis guide for a single-company deep dive

## Signal families

Use the five families and weights in `../../../references/heat-signals.md` (Capital 6, Leadership 4, Expansion 3, Launches & deals 3, Hiring voice 1.5, recency multipliers, negatives). Add one more family for single-company work:

| Family | What counts | Weight |
|---|---|---|
| **Talent movement** | Senior hires from notable companies into the user's function, a team lifted from a competitor, ex-employees of one company clustering in, rapid growth in LinkedIn headcount for the function | 2 |

**Hiring activity** (open roles in the user's function/geography) is evidence, not just voice: 5+ fresh relevant postings (≤30 days) scores at Expansion weight (3); 1–4 at Hiring-voice weight (1.5). Explicit headcount statements ("hiring 300 engineers") score at Capital weight.

## Reading signals → problems → capabilities

| Signal pattern | Likely problem | Capability being built |
|---|---|---|
| Fresh growth round | Product and team can't keep up with the plan sold to investors | New squads, platform scale, leads for new teams |
| New CTO / VP / function head | Previous approach not working, or a new phase | Leader's own team, re-architecture, process reset |
| New country / office / capability centre | Need local delivery and leadership fast | Local leads, site setup, cross-region processes |
| Major launch or enterprise customer | Delivery pressure, reliability, compliance | Reliability, security, integrations, customer engineering |
| Acquisition (as acquirer) | Integrating two products, teams and stacks | Integration engineering, platform consolidation |
| Licence / regulatory approval | Compliance and controls before scale | Security, risk, audit, compliance tooling |
| Many senior postings in one function | Function is being built or rebuilt | The whole team; early hires get scope |
| Layoffs elsewhere + hiring in one area | Strategic pivot | The new focus area only |

Tie every inference to the signal rows that support it.

## Hiring probability (1–10)

Start from the heat score (Σ weight × recency + breadth bonus − negatives, capped at 10), then adjust for fit to the user's role:

- **+1** the user's function is explicitly named in a signal (e.g. "hiring engineers", "new Head of Security").
- **+1** open roles at the user's seniority exist in the user's geography now.
- **−2** the user's function is unlikely at this location (e.g. the office is sales-only).
- **−1** the signals are single-source or unconfirmed.

Clamp 1–10. Then the timeline:

| Evidence | Timeline |
|---|---|
| Open relevant roles now, or capital/headcount signal ≤90 days with function named | Immediate (0–3 months) |
| Strong signals ≤6 months, function implied but no postings yet | 3–6 months |
| Early or older signals, or hiring tied to a future milestone (launch, licence, close of deal) | 6–12 months |

State confidence (high / medium / low) based on the number and quality of sources.

## Targeting: who owns the problem

- The hiring manager is the person who owns the problem the role solves, usually 1–2 levels above the role.
- New leaders (≤6 months in role) are the best targets: they're building their team.
- For capability centres, target the site head and the function head at the site, not global HQ.
- Recruiters/TA partners for the function are a parallel track, not the main one.

## Outreach angles that work

- **Signal + proof**: "You just did X; I've done the hard part of X before, here's the number."
- **Problem insight**: name the non-obvious problem the signal creates and one way to handle it.
- **New-leader angle**: offer to be an early hire who helps the new leader hit their first-quarter goal.
- **Integration / launch angle**: specific experience with the integration, migration or launch they're in the middle of.

Each angle uses a different signal or proof point.

## Red-flag checklist

Layoffs or freeze in last 12 months · leadership exits without replacement · down round, bridge round or runway talk · pending acquisition or merger (roles may pause) · hiring only in other locations · roles reposted for months (hard to fill or not real) · review-site patterns of burnout or churn in the relevant team · stack or location conflicts with the user's exclusions.
