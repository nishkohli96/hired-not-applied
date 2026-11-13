# Sender profile and proof bank

Outreach is only as strong as the evidence in it. Build this once per session from the user's resume and reuse it in every message.

## Source

**First step of every skill:** load the resume as described in `resume-source.md` (same folder), starting with `bash ../scripts/find-resume.sh` from this folder if shell access is available. Order: conversation first, then `$HIRED_NOT_APPLIED_RESUME`, `./resume.md`, `~/.hired-not-applied/resume.md`, connected folder / project files. If none exists, run the `resume-setup` skill. Use the frontmatter (targets, availability, links) instead of asking.

## Step 1: Extract the proof bank

If `resume.md` already has a `## Proof bank` section, use it as is. Otherwise scan every role and project. Pull each line that has a number, a scale marker, or ownership. Store as short facts, keeping the user's own numbers exactly:

| # | Type | Fact (as short as possible) | Source line |
|---|---|---|---|
| P1 | Leadership | Led team of 6 across 2 time zones | Company A, bullet 2 |
| P2 | Impact | Cut page load 40% on app with 1M+ MAU | ... |
| P3 | Scale / brand | Built checkout used by 3 national retail brands | ... |
| P4 | Ownership | Owned release process, 0 rollback incidents in 12 months | ... |

Types: **Leadership** (led, managed, mentored, hired, ran), **Impact** (%, ₹/$, time saved, revenue, users), **Scale / brand** (big clients, user counts, traffic, regions), **Ownership** (end-to-end, on-call, decision owner, turnaround), **Craft** (open source, certifications, awards, publications).

Rules:
- Use only numbers that appear in the source. Never round up, combine or invent. If a strong story lacks a number, note it as `[number?]` and ask the user once, after the drafts, whether they can add it.
- Note recognisable brands/clients; for most readers a known name works as well as a metric.

## Step 2: Build the positioning

If `resume.md` has a `## Value statements` section (written by the `value-statement` skill), base the headline identity and credibility lines on it and keep messages consistent with it.


- **Headline identity** (≤10 words): `{seniority} {function} who {leadership verb} {domain}`. Example: "Senior full-stack engineer who leads delivery on high-traffic products."
- **Leader line**: one sentence pairing a hands-on result with a people/ownership result. Example: "I wrote the core of our payments service and led the 5-person team that took it live before peak season." (Show leading from the front through what was done; never write the phrase "lead from the front" itself.)
- **Credibility lines** (2–3 variants, ≤25 words each), each leading with a different proof point, so messages to different people at the same company don't repeat.

If the resume shows no people leadership, use ownership proof (owned a system, drove a launch, made the call) and don't claim to have managed people.

## Step 3: Match proof to the recipient

| Recipient | Lead with |
|---|---|
| HR / recruiter | Must-have match + years + one headline metric + availability |
| Hiring manager | The proof point closest to their team's problem, then leadership |
| Internal employee (referral) | Fit summary they can forward without knowing the user; brand names + metrics |
| Senior leader / founder | Business impact (revenue, users, cost, time) |

## Availability line (only when relevant)

Notice period / immediate joiner, location and remote/relocation openness, work authorization - only what the user has stated. Recruiters care; peers and hiring managers usually don't in the first message.
