---
name: resume-setup
description: Sets up or updates the user's resume.md - the single Markdown resume that every hired-not-applied skill reads - by converting a pasted, PDF or DOCX resume into the standard format with targets, availability, links and a pre-extracted proof bank of metrics and leadership facts, then saving it to ~/.hired-not-applied/resume.md or the project folder. Use when the user says "set up my resume", "save my resume", "update my resume.md", "add this to my resume", "change my target roles", or when another skill finds no saved resume.
---

# Resume setup

<!-- Synced from /shared by scripts/sync-shared.sh. Edit the copy in /shared, not in a plugin. -->

Create or update the one resume file all skills in this plugin collection use. See `../../references/resume-source.md` for where skills look for it.

## 1. Get the source

- Already have a `resume.md` (any location in `resume-source.md`)? Read it; this is an **update**. Go to step 3 with the user's changes.
- Otherwise ask the user to paste their resume or attach it (PDF, DOCX, TXT, MD, or a LinkedIn PDF export). One message, no other questions yet.
- For a PDF/DOCX, extract the text (use the pdf/docx skills or tools available). Keep wording exactly; fix only broken line wraps and extraction noise.
- **Extract formatting, not just text.** Plain text extraction drops bold and links, so also read them: hyperlink annotations in a PDF (e.g. PyMuPDF `page.get_links()` matched to the words they cover) and bold runs/hyperlink relationships in a DOCX. If the source is Markdown or HTML, they are already there. If the extractor cannot recover bold or links, say so and ask the user to paste the resume text from the original (copying from Word or a browser keeps bold and links) or to list the links and the metrics they bold. If they can't, save without the missing formatting and tell them exactly which bold and links are not preserved; never guess which numbers were bold.

## 2. Convert to the standard format

Follow `references/resume-template.md`:
- **Frontmatter**: fill `name`, `headline`, `location`, `email`, `links` from the resume. Leave `targets`, `availability`, `work_authorization` empty if the resume doesn't state them.
- **Body**: keep every role, date, bullet and number as written, and keep the formatting: bold text stays `**bold**` (the user's bolded metrics included) and every link stays `[text](url)` (LinkedIn, GitHub, projects, packages, certifications). Never flatten a link to plain text or drop a URL. Normalize headings to the template's sections. Don't rewrite or embellish bullets here; tailoring happens per job in `tailor-resume`.
- **Proof bank**: extract every fact with a number, team size, recognisable brand/client, scale or ownership, as short rows (types: Leadership, Impact, Scale / brand, Ownership, Craft). Only numbers that appear in the resume.

Then ask, in **one** message, only for what's missing and useful across skills:
- Target roles and locations / work mode
- Availability (notice period or immediate)
- Anything to share about work authorization (optional; never assume)
- Any strong result that's missing a number (list the 1–3 bullets that would benefit)

Accept "skip" for any of them.

## 3. Save

Pick the location, in this order, and tell the user where it went:
1. If the user named a path or a project folder, save there as `resume.md`.
2. If code execution with a home directory is available (Claude Code, linked computer): `~/.hired-not-applied/resume.md` (create the folder). Recommended, because it survives plugin updates and works from any project.
3. Claude app without file access: give the finished file to the user to download, and tell them to add it to the project's files or a connected folder as `resume.md`.

Include the `observed:` block from the template, empty. It fills itself as the user pastes JDs; `../../references/resume-source.md` has the rules. Set `updated:` to today's date. If a file already exists, update in place and keep anything the user didn't ask to change.

## 4. Confirm

Reply with: where it's saved, a 3-line summary (headline, years, top 3 proof points), and what's still missing. Ask the user to open the file and check the metrics, dates, titles and targets before using other skills, since every skill trusts it. Mention once that pasting a different resume in a chat overrides the file for that chat only, and that `HIRED_NOT_APPLIED_RESUME=/path/to/file.md` points skills at a custom location.

## Rules

- Never invent or round numbers, titles, dates, employers or certifications.
- Never strip bold or hyperlinks from the user's resume. Before saving, compare the count of bold spans and links against the source and fix any shortfall. When the source's bold or links could not be extracted, there is nothing to compare: skip the count and report the gap instead.
- Don't store ID numbers, salary history, health, family or other sensitive personal details unless the user explicitly asks.
- Keep the body under ~1,500 words; long resumes are fine, but skills read this file often.
