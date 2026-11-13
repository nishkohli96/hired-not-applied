# Remote method

## Remote maturity classification

| Class | Evidence |
|---|---|
| **Fully distributed** | No offices (or optional hubs only); team spread across many countries; public handbook; async-first; leadership remote |
| **Remote-first** | Offices exist but remote is the default; most roles open to remote; hires in many countries (entities or EOR); leadership partly remote |
| **Remote-friendly** | Some roles remote, often limited to certain countries or time zones; office-centred culture |
| **Hybrid-friendly** | Remote by exception; mostly hybrid; remote roles rare or senior-only |

Signals to check: public remote/handbook pages, "where we hire" lists, number of countries on LinkedIn "People" locations, EOR partner mentions, job posts saying "remote (anywhere)" vs "remote (US only)", exec locations, async tooling posts, history of remote hiring in the user's country (current employees there).

## Eligibility check (per role)

1. Read the location line on the employer's page: "Remote – Worldwide / EMEA / APAC / India / US only".
2. Check whether the company already has employees in the user's country (LinkedIn People filtered by location).
3. Check for an entity or EOR partner in that country.
4. Time-zone overlap requirement (hours/day) vs the user's zone.
Exclude if any step clearly fails; flag as "unclear" if evidence is missing.

## Future remote hiring signals

Use the heat-signal families and weights (`heat-signals.md`) plus remote-specific signals:
- New EOR partnership or entity in the user's country/region (strong).
- Expansion into the user's region or time zone (strong).
- Remote job-post velocity up for the user's function (medium).
- Funding round with stated plans to grow engineering/product/etc. while remote-first (strong).
- New leader in the user's function who posts about building a distributed team (medium).
- Return-to-office mandates or freezes (negative).

## Role mapping

Commonly distributed functions: software engineering, data, design, product, DevRel, technical writing, customer success/support, sales (by region), marketing, finance ops, recruiting. Leadership opportunities: team/tech lead, engineering manager of a distributed team, regional lead (e.g. APAC). Specialist opportunities: the user's niche skills that are scarce remotely.

## Opportunity score (0–100)

| Factor | Weight | 0 → max |
|---|---|---|
| Current openings matching the user (eligible) | 25 | none → several at the right level |
| Remote maturity | 20 | hybrid-friendly → fully distributed |
| Hiring frequency (remote posts in last 90 days) | 15 | none → steady |
| Growth trajectory (heat signals) | 15 | flat/negative → strong recent signals |
| Relevance to the user's profile (domain, stack, level) | 15 | weak → direct |
| Future hiring potential in the user's country/zone | 10 | none → strong |

Tiers: **Target Immediately** ≥ 70 and at least one eligible open role; **Monitor Closely** 50–69 or strong signals without a current eligible role (likely within 3–6 months); **Early Signal** < 50 with emerging signals.

## Discovery framework (remote-specific additions)

On top of `contact-discovery.md`:
- Remote companies often hire through their own ATS boards and community: check their engineering blog, open-source repos, community Slack/Discord, and conference talks for hiring managers.
- Talent leaders: "Head of Talent", "Technical Recruiter (APAC/EMEA)", "Talent Partner – Engineering".
- Decision-makers: the function head (e.g. VP Engineering, Head of Product) and the engineering managers of distributed teams; regional leads where they exist.
- Contribution as a door: meaningful contributions to a company's open-source projects or public community are a strong discovery and credibility channel for remote-first companies.
