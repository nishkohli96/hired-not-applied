# Where to save what you produce (shared by every skill in hired-not-applied)

<!-- Synced from /shared by scripts/sync-shared.sh. Edit the copy in /shared, not in a plugin. -->

Anything a skill drafts that the user might reuse - a cold email, a decoded JD, a tailored resume, a research brief - is saved to a file as well as shown in chat. A job search produces dozens of these, and they are worth having side by side when the recruiter replies three weeks later.

## Find the output root (stop at the first hit)

1. **A path the user named** in this conversation or earlier in the session.
2. **`HIRED_NOT_APPLIED_OUTPUT`**, if code execution is available (`echo "$HIRED_NOT_APPLIED_OUTPUT"`).
3. **The current working directory**, if the user is running Claude from a folder of their own. This is the normal case: the folder they installed the plugins into, or the clone they load them from.
4. **Next to the saved resume**: the folder holding `resume.md`, usually `~/.hired-not-applied/`.

Create the folders if they don't exist. Say the path once, the first time you write in a session, and not again.

**Never write into the installed plugin directory** (anything under `~/.claude/plugins/`). A plugin update replaces that directory and the user's drafts go with it. The working directory and the resume folder both survive updates.

If no location can be written to (the Claude app with no file access), show the output in chat and offer it as a download instead. Don't ask the user to set a path mid-task.

## Layout

```
<output root>/
  applications/<company>-<role>/   one folder per job applied for
  people/                          per-contact prep
  research/                        companies, market and industry work
  outreach/                        the outreach log
  profile/                         positioning that isn't job-specific
```

`<company>-<role>` is lowercase with hyphens, short enough to read in a file list: `fnp-sde3-backend`, `payoneer-senior-engineer`. Reuse the existing folder for a job the user already has one for, rather than making a near-duplicate.

## One file per skill, every variant inside it

Each skill writes **one** file per job or per person, and puts all of its variants in that file as sections. Three cold-email options for the same role are three `## Variant` sections in `cold-email.md`, never three files. The user compares them in one place and sends one.

Write the full text of each variant, exactly as shown in chat. A file that only summarises what was drafted is useless later.

## File shape

```markdown
---
skill: cold-email
company: FNP
role: SDE-3 Backend
contact: Priya Sharma, Engineering Manager      # when there is one
source: https://…                               # JD or profile link, when there is one
created: 2026-11-13
---

# Cold email - FNP, SDE-3 Backend

## Variant A - short, metrics first
**Subject:** …

…full body…

## Variant B - longer, problem-led
…
```

## Rewriting and appending

- **Same skill, same job, new draft in the same session**: replace the file.
- **A later session**: keep what's there, add the new draft as a dated section at the end (`## 2026-11-20 - rewrite after no reply`), and leave the earlier version in place. The user may have already sent it.
- **Never delete a file** the user hasn't asked you to delete.
- A file the user has edited by hand is theirs: add to it, don't overwrite it.

## Tell the user once

At the end of the reply, one line: the relative path written, nothing more. No file tree, no list of what's in it.
