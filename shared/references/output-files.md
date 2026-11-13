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
  applications/<Company>/          one folder per company applied to
  people/                          per-contact prep
  research/                        companies, market and industry work
  outreach/                        the outreach log
  profile/                         positioning that isn't job-specific
```

**The folder is the company name and nothing else**: `applications/Innovaccer/`, `applications/FNP/`, `applications/Reel_Security/`. Write it the way the company writes its own name, keep its capitalisation, drop legal suffixes (Inc, Ltd, Pvt, LLC), and join multiple words with underscores. Never put the role in the folder name. If a folder for that company already exists, use it, and never make a near-duplicate (`Innovaccer` and `innovaccer-sde3`).

**Role goes in the file name**, because one company can have several roles and each needs its own files side by side: `decode-jd-sde3-fullstack.md`, `cold-email-sde3-fullstack.md`. Use a short lowercase hyphenated slug of the title as written in the JD, and reuse the same slug for every skill on that role.

**Exception: the tailored resume** is named for the person who will receive it, in the form `<Name>_<Title>_<Company>.<ext>` with no `_Resume` suffix and words inside each part joined by underscores: `Nishant_Kohli_Senior_Software_Engineer_Innovaccer.docx`.

## One file per skill, every variant inside it

(Message files follow "Messages are plain text" below; the rest of this section applies to both.)

Each skill writes **one** file per job or per person, and puts all of its variants in that file as sections. Three cold-email options for the same role are three variant blocks in one `cold-email-<role>.txt` (or three `## Variant` sections in a Markdown file), never three files. The user compares them in one place and sends one.

Write the full text of each variant, exactly as shown in chat. A file that only summarises what was drafted is useless later.

## Messages are plain text, everything else is Markdown

Anything the user will copy and paste into another app - a cold email, a connection note, an InMail or DM, a referral ask, a follow-up, an outreach pack - is saved as **`.txt`**, not `.md`. Pasting from Markdown into Gmail or LinkedIn carries stray `#`, `**` and `[text](url)` with it.

Rules for a message file:
- **No Markdown anywhere**: no `#` headings, no `**bold**`, no bullet markers other than a plain hyphen the user would actually send, no tables, no code fences.
- **No front matter.** Put one plain header line instead, outside the paste area.
- **Links are bare URLs** (`https://github.com/nishkohli96`), never `[text](url)`, so Gmail and LinkedIn make them clickable on paste.
- **Each variant is one block**, with every variant for that job in the same file, separated by a rule line. Everything between two rule lines is exactly what gets pasted; nothing else goes inside it. Put the word or character count in the rule line, not in the body.
- For email, `Subject:` is the first line of the block, then a blank line, then the body.
- Leave a real blank line between paragraphs. Don't hard-wrap lines.

```
Cold email | FNP | SDE-3 Backend | to Priya Sharma, Engineering Manager | 2026-11-13

========== VARIANT A: short, metrics first (92 words) ==========
Subject: SDE-3 Backend - 25 Node.js APIs for SonyLiv, 200-500ms faster

Hi Priya,

...

Best,
Nishant

========== VARIANT B: longer, problem-led (148 words) ==========
Subject: ...
```

Later sessions append a new block under a rule line carrying the date (`========== 2026-11-20: rewrite after no reply ==========`). Reports, briefs, decodes and research stay `.md` with front matter.

## File shape (Markdown files)

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
