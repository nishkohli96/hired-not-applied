---
name: remote-radar
description: Builds a prioritised target list of remote employers for the user - open remote roles they can actually be hired into from their country, remote-first and distributed companies classified by remote maturity, companies with signals they will hire remotely soon, the roles each is likely to hire remotely, an opportunity score with Target Immediately / Monitor Closely / Early Signal tiers, company intelligence, and a repeatable way to find the hiring managers and talent leaders. Use when the user says "find remote jobs for me", "which companies hire remotely from India", "remote-first companies for my role", "build my remote target list", or "international remote opportunities".
---

# Remote radar: where the user can realistically get hired remotely

Think like an executive search consultant building a remote search strategy, not a job board. Signals beat listings; **"remote" only counts if the company can actually hire someone in the user's country.**

## Step 0: Inputs

From `resume.md` (load per `../../references/resume-source.md`, run the finder script first) unless the user says otherwise: target role, industry/domain, seniority, years, home country and city, preferred countries or time zones, exclusions (stacks, company types). Ask only for what's missing, in one message; if the user isn't there, state assumptions and continue.

Hard filters for the whole run:
- **Eligibility**: the role or company hires in the user's country (directly, via a local entity, or via an employer of record such as Deel, Remote.com, Oyster, Rippling, Multiplier) or as a contractor if the user accepts that. Roles restricted to other countries are excluded, not listed with a caveat.
- **Time zone**: note required overlap; flag roles needing heavy overlap with distant zones.
- The user's exclusions.

## Step 1: Research (several searches per step, in parallel where possible)

Read `references/remote-method.md`, `../../references/heat-signals.md` and `../hiring-radar/references/contact-discovery.md`.
- **Open roles**: company career pages (Greenhouse/Lever/Ashby/Workable boards), remote boards (e.g. We Work Remotely, Remote OK, Remotive, Himalayas, Wellfound, Working Nomads, Arc), and any connected job-search tool (e.g. an Indeed connector). Verify each role is live, its posted date, and its location restriction on the employer's own page.
- **Remote-first companies**: public remote handbooks and policies, "where we hire" pages, EOR partnerships, team-location distribution on LinkedIn, remote-first lists, leadership working remotely.
- **Future signals**: funding, expansion into the user's region, new products, leadership hires, team scaling, new EOR/entity in the user's country, job-post velocity for remote roles.

Every company and role needs a dated, linked source. If a source is a board, confirm on the company's page before listing. **If employer pages can't be opened** (blocked fetch, login wall), don't stop: keep going with search results, add a `Verified` column (`Yes` / `No – confirm on employer page`), list unverified roles only when a search snippet shows the role, location restriction and a date or recency, and still complete the remote-first, signals, mapping and discovery sections. If a browser tool is available, use it to open the employer pages instead.

## Step 2: Analyse and rank

Follow `references/remote-method.md`: classify remote maturity, map likely remote roles, compute the **opportunity score** and assign tiers. Prefer 15–25 companies of real quality over long lists; if fewer qualify, say so and don't pad.

## Output

Reply in chat (offer to save as a document if long):

```
## Remote radar: <role>, <seniority>, hiring from <country>
Inputs and assumptions in one line · research date

### Executive summary            (3–5 bullets: best bets, where remote demand is coming from, main constraint for this user)
Open remote opportunities: N · Remote-first companies: N · Future remote hiring targets: N

### Prioritised target list      (table: # · company · score · tier · remote model · open roles for you (Y/N) · why included)
### Open remote opportunities    (table: company · role · location restriction · posted · why relevant · seniority fit · link)
### Remote-first companies       (company · classification · remote philosophy · workforce distribution · hiring practice/EOR · global hiring · remote leadership · why this classification)
### Future remote hiring signals (company · dated signals · why remote hiring is likely · roles that may emerge)
### Remote role mapping          (per target company: likely remote roles · distributed functions · leadership openings · specialist openings)
### Company intelligence         (Target Immediately and Monitor Closely only: what they do · why remote talent matters to them · why attractive for the user's field · business challenges)
### Outreach & discovery         (per high-priority company: hiring functions · decision-maker titles · best discovery channels · likely TA approach; then the repeatable framework once)
Sources (numbered, dated)
```

## Save it

Write the result to `research/remote-radar-<YYYY-MM-DD>.md` under the output root, following `../../references/output-files.md`: the tiers and the per-company detail. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- Read the `observed:` block in `resume.md` if it has one: the titles and work modes seen in real postings, so the search uses the market's words.
- Do not rely solely on job boards; at least half the companies should come from signal or remote-model research, not listings.
- No role or company without a dated source; mark anything older than 60 days (roles) or 6 months (signals) as stale.
- Exclude roles the user can't legally or practically take from their country; say how many were excluded and why.
- Name people only when public sources show them in the role; otherwise give titles.
- No generic remote-work advice; stay within the sections above.
