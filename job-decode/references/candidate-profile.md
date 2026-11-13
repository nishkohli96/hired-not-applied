# Candidate profile: how to gather and reuse it

Every job-decode skill compares a job against a person. Build the profile once per session and reuse it.

## Source

**First step of every skill:** load the resume as described in `resume-source.md` (same folder), starting with `bash ../scripts/find-resume.sh` from this folder if shell access is available. Order: conversation first, then `$HIRED_NOT_APPLIED_RESUME`, `./resume.md`, `~/.hired-not-applied/resume.md`, connected folder / project files. If none exists, run the `resume-setup` skill. Use the file's frontmatter (targets, availability, links) and its `## Proof bank` directly.

## Minimum fields

| Field | Why |
|---|---|
| Current/last title, field, years of experience | Seniority match |
| Core skills, tools, certifications, licenses | Hard-requirement match |
| 3–5 achievements with numbers | Evidence for bullets, stories, outreach hooks |
| Industries and notable employers/clients | Domain match, credibility |
| Education | Gate requirements in regulated fields |
| Target roles, locations, work mode, notice period | Filter and framing |
| Work authorization / visa needs (only if the user offers it) | Eligibility flags |
| Constraints (no relocation to X, salary floor) | Red-flag detection |

## Saving

New or changed facts go into `resume.md` through the `resume-setup` skill (offer once per session). Never store ID numbers, salary history, health or family details in it unless the user explicitly asks.

## Rules

- Never invent experience, employers, metrics, degrees or certifications. If a number is missing, leave a visible placeholder like `[X%]` and tell the user.
- Distinguish what the user stated from what you inferred.
