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
2. **Headline + summary**: start from the resume's `## Value statements` if present; 2–3 lines naming the target title (as written in the JD), years, domain, and the top 2–3 matching strengths.
3. **Skills section**: put JD keywords the candidate genuinely has first, using the JD's exact spelling. Group by category. Drop irrelevant skills that dilute.
4. **Bullets**: rewrite the most relevant roles' bullets with `references/bullet-formula.md`. Lead each role with the bullets that match must-haves. Trim old or unrelated roles to 1–2 lines.
5. **Order sections** for the reader: experience-first for experienced hires; projects/education first for entry level or career switchers; licenses/certifications near the top in regulated fields.
6. **Region format**: apply `references/regional-formats.md`.
7. **ATS hygiene**: single column, standard headings, no tables/text boxes/icons for key content, dates as `MMM YYYY`, both acronym and full form once.
8. **Coverage check**: list keywords used, keywords skipped because the user lacks them, and any `[placeholder]` needing a real number.

## Output

- Ask which file format if not stated and the original was not a file: default to the same format as the uploaded resume (DOCX in → DOCX out, PDF in → DOCX + PDF out). Use the docx/pdf skills to build it.
- Name the file `<Name>_<Role>_<Company>_Resume.<ext>`.
- Save it to `applications/<company>-<role>/` under the output root, per `../../references/output-files.md`. If the user named another path, or has a preferred downloads location, save a copy there too.
- In chat: 3-line change summary + the coverage check. Do not paste the whole resume back.

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- Never add employers, titles, dates, degrees, certifications, tools or metrics the user did not provide. Rephrasing and reordering only; missing numbers become `[X]` placeholders flagged to the user.
- Keep the user's truthful titles; if the JD title differs, put the target title in the headline, not in job history.
- Keep personal details minimal and region-appropriate; never add DOB, marital status, photo or nationality unless the region convention or the user requires it.
