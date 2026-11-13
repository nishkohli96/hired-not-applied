---
name: find-contacts
description: Builds a target contact map for a company or role - who to reach (hiring manager, recruiter, team peers, alumni, ex-colleagues), how to find them on LinkedIn and the web, likely work-email patterns to verify, and a personalization hook for each. Use when the user says "who should I reach out to at X", "find the hiring manager for this job", "find recruiters at X", "how do I find someone's work email", "build my outreach list", or "find alumni at X".
---

# Find contacts

Identify the right 3–8 people to contact for a target company or role, with a hook for each.

## Inputs

- Company, and ideally the JD or team/function.
- Sender profile (`../../references/sender-profile.md`) for shared-background matching: past employers, schools, cities, communities.

## Process

1. **Pick target personas** for this role (use the recipient table in `../../references/outreach-principles.md`):
   - Likely hiring manager: the role's manager title is usually one level up (e.g. "Engineering Manager, Payments", "Head of Marketing", "Nurse Unit Manager").
   - Recruiter / talent partner covering the function or region.
   - 1–2 peers on the team (same or adjacent title).
   - Warm paths: alumni of the user's schools or past employers now at the company; mutual connections.
2. **Search strategies** to give the user (and run via web search where possible):
   - LinkedIn: company People tab filtered by keyword (team, function, location); filter "connections of" for warm paths; school/past-company filters.
   - Web X-ray: `site:linkedin.com/in "<Company>" "<title keyword>" "<city>"`.
   - Job post itself: recruiter name, "posted by", hiring team panel on LinkedIn.
   - Company blog, talks, podcasts, GitHub org, publications, press releases for team members who post publicly.
3. **Hook per person**: one recent public, professional item (post, talk, article, launch, repo, paper). If none found, say so.
4. **Work email (only when the user plans to email)**:
   - Find the domain's pattern from public sources (press contacts, published staff emails, the company site). Common patterns: `first@`, `first.last@`, `flast@`, `firstl@`.
   - Present it as a pattern to verify, not a fact. Suggest verification with an email verifier the user trusts, or sending first via LinkedIn.
5. **Prioritize**: warm paths first, then hiring manager, then peers, then recruiter (recruiter first for high-volume or agency roles).

## Output

Reply in chat with a table:

| Priority | Persona | Name & title (if found) | Where found | Hook | Channel | Email pattern |
|---|---|---|---|---|---|---|

Then: recommended order and the channel for each. Offer to draft messages with `connection-note`, `linkedin-message` or `cold-email`, and to log them with `outreach-tracker`.

## Save it

Write the result to `applications/<Company>/contacts-<role>.md` under the output root, following `../../references/output-files.md`: the contact map with the hooks. Then show it in chat as usual and end with one line giving the path.

## Rules

- Public professional information only: name, title, employer, public posts and work. No home addresses, personal phone numbers, family, or personal social accounts.
- Never present a guessed email as verified.
- Don't scrape at scale; this is targeted networking, not lead generation.
