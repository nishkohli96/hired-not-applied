---
name: tailor-resume
description: Tailors a resume or CV to a specific job description for any field and region - ATS keyword alignment, rewritten achievement bullets, reordered sections, region-correct format (US, UK, EU, Gulf, India, Australia, SEA) - without inventing experience. Use when the user says "tailor my resume", "customize my CV for this job", "make my resume ATS-friendly for this JD", "rewrite my bullets for this role", or "Gulf/Europass/US format CV". For guidance-only alignment of a professionally written resume without rewriting it, use resume-alignment instead.
---

# Tailor a resume to a job

Produce a targeted version of the user's real resume for one job.

## Inputs

- The user's resume, loaded per `../../references/resume-source.md` (usually their saved `resume.md`). Tailored output is a new file; never overwrite `resume.md` with a tailored version.
- The JD. Decode it first (steps in `decode-jd`) to get must-haves and the ATS keyword list.
- Target region and any format the user names. Default format from `../../references/domain-lens.md` region table; the user's stated preference always wins.

## Process

1. **Map** each JD must-have to the resume line that proves it. Note uncovered must-haves.
2. **Headline + summary**: start from the resume's `## Value statements` if present. Write the summary in a neutral professional style, 3–5 lines: no personal pronouns (I, me, my, you); open with the professional designation (the target title as written in the JD, or the user's truthful title if it is the same level); strong action-oriented language; years, domain, technical expertise and up to 3 measurable achievements that match the JD. Use only the achievements the resume actually states; if it has fewer than 3, or none, use fewer and rely on scope, scale and expertise instead. Never invent or estimate a number to fill the count. **Years is the figure already stated in the resume's summary or headline, copied as written; never count it from the job dates.** Keep the same figure everywhere it appears in the document.
3. **Skills section**: keep the user's own category names, their order and their format (a labelled line per category stays a labelled line per category). Within a category, move JD keywords the candidate genuinely has to the front, in the JD's exact spelling. Never drop a category or reduce it to a flat list; only trim a skill if it is clearly irrelevant and the user's resume has no section for it.
4. **Bullets**: rewrite the most relevant roles' bullets with `references/bullet-formula.md`. Lead each role with the bullets that match must-haves. Trim old or unrelated roles to 1–2 lines.
5. **Order sections** for the reader: experience-first for experienced hires; projects/education first for entry level or career switchers; licenses/certifications near the top in regulated fields.
6. **Region format**: apply `references/regional-formats.md`.
7. **ATS hygiene**: single column, standard headings, no tables/text boxes/icons for key content, dates as `MMM YYYY`, both acronym and full form once.
8. **Coverage check**: list keywords used and keywords skipped because the user lacks them.
9. **Suggestions**: anything that would strengthen the resume but is not in the user's material (a missing metric, a quantified outcome, a stronger OSS stat) goes in the chat reply as suggestions after the resume is done. Never write a placeholder such as `[X]%`, `[metric]` or an invented figure into the resume itself.

## Document layout

- **Contact line** directly under the name, in this order, separated by ` | `: email, phone, LinkedIn, GitHub, city. Skip any the resume does not have. The words "LinkedIn" and "GitHub" are hyperlinks to the user's profile URLs; do not print the raw URLs. Region rules (see `references/regional-formats.md`) can add items, such as notice period or visa status, on a separate line.
- **Carry over the resume's links and bold.** Every hyperlink in `resume.md` (profiles, projects, packages, certifications) stays a live link in the output, and the user's own bold on metrics stays unless it is not relevant to this role. Never output a link as plain text.
- **Bold** only the key metrics that matter for this role, in the summary and in experience bullets: the headline outcomes (for example `30%` lift in conversion, `200–500ms` faster responses), not every number. Dates, counts of screens or titles, and minor figures stay plain. Aim for roughly one bolded metric per role.
- **Education**: a degree line with the dates right-aligned, and the field, institution and place on the next line:
  ```
  B.TECH                                                    Aug 2014 – Jul 2018
  Computer Science, Manipal Institute of Technology, Manipal, India
  ```
  Use the degree name as the user wrote it, uppercased in the heading style only if the resume does.
- **Certifications**: one per line as `<Certification name> - <Issuer> (<year>)`, for example `Introduction to Model Context Protocol - Claude Academy (2026)`. Use only what the resume states.

## Output

- Ask which file format if not stated and the original was not a file: default to the same format as the uploaded resume (DOCX in → DOCX out, PDF in → DOCX + PDF out). Use the docx/pdf skills to build it.
- Name the file `<Name>_<Title>_<Company>.<ext>`, with no `_Resume` suffix, words inside each part joined by underscores: `Nishant_Kohli_Senior_Software_Engineer_Innovaccer.docx`. `<Title>` is the target title as written in the JD.
- Save it to `applications/<Company>/` under the output root, per `../../references/output-files.md`; the folder is the company name alone, as in `applications/Innovaccer/`. If the user named another path, or has a preferred downloads location, save a copy there too.
- In chat: 3-line change summary + the coverage check. Do not paste the whole resume back.

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- Never add employers, titles, dates, degrees, certifications, tools or metrics the user did not provide, and never change the stated years of experience. Rephrasing and reordering only; a missing number is never written into the resume, not even as a placeholder: suggest it in chat instead.
- Keep the user's truthful titles; if the JD title differs, put the target title in the headline, not in job history.
- Keep personal details minimal and region-appropriate; never add DOB, marital status, photo or nationality unless the region convention or the user requires it.
