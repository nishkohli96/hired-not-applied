---
name: referral-request
description: Writes referral requests for job seekers in any field - asking a connection, ex-colleague, alumnus or new contact to refer them for a specific role, plus a forwardable blurb the referrer can paste into their internal system. Use when the user says "ask for a referral", "how do I ask X to refer me", "referral message for this job", "write a blurb my friend can forward", or "they offered to refer me, what do I send".
---

# Referral request

Make it easy for someone to say yes and do the referral in under two minutes.

## Inputs

- Referrer: name, relationship strength (close friend / ex-colleague / alumni / met once / new contact who chatted), their team and role.
- Job: title, link, job ID, team.
- Sender profile and proof bank (`../../references/sender-profile.md`) and resume link.

## Process

1. Read `../../references/voice.md` and `../../references/outreach-principles.md`.
2. Check warmth. For a referrer the user has never spoken to, write the **cold direct ask** (the default when the user's goal is a referral) and also offer the short **warm-up first** version as an alternative. The direct ask must make the fit obvious from metrics and make the referral take two minutes.
3. Draft the ask using the matching template in `references/templates.md`:
   - Name the exact role + job ID + link.
   - Give the 3 strongest fit points.
   - Offer an easy out ("totally fine if you'd rather not").
   - Attach or link the resume only in this message, when asked to refer.
4. Draft the **forwardable blurb** (≤80 words, third person) the referrer can paste into the referral portal or send to the hiring manager.
5. Draft a short **thank-you** to send after they refer, and a status update to send later (interview, offer or outcome), since referrers like to hear back.

## Before showing drafts

Run the voice self-check (`../../references/voice.md`). If code execution is available, save the drafts to a temp file and run `python3 ../../scripts/voice_check.py <file>`; fix every hit. Confirm every number appears in the user's resume.

## Output

Three blocks: **Ask**, **Forwardable blurb**, **Thank-you + later update**. Each ready to paste.

## Save it

Write the result to `applications/<Company>/referral-request-<role>.txt` under the output root, as plain text with bare URLs and no Markdown, following the "Messages are plain text" rules in `../../references/output-files.md`: all three blocks in full: the ask, the forwardable blurb, and the thank-you with the later status update. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- Assertive about the fit, never pressure on the person; always include a graceful out.
- Never claim the referrer knows the user's work if they don't; for weak ties, frame as "you can refer me as someone you've spoken with".
- Mention that many companies pay referral bonuses only if the user wants that angle; never lead with it.
