---
name: resume-alignment
description: Shows how well an existing, professionally written resume already matches a specific job and what small adjustments would help - without rewriting it - covering the employer's top 5 priorities, 10-15 critical keywords ranked critical / important / nice-to-have, strong / partial / missing matches, what to keep as is, what to emphasise, which supported keywords could fit naturally and where, and a short action plan. Use when the user says "align my resume to this JD", "check my resume against this job", "what keywords am I missing", "is my resume a match", "don't rewrite my resume, just tell me what to adjust", or pastes a JD and asks about their resume. To produce a fully tailored new version instead, use tailor-resume. To score the candidate rather than the document, and get an apply / network first / skip call, use fit-check.
---

# Resume alignment: guidance, not a rewrite

Treat the user's master resume as professionally written. Help them see whether it clearly shows what this employer wants, and where small, honest adjustments would make that easier for a recruiter to spot.

**Never rewrite bullets or sections, never produce a new resume, never change the overall positioning, never suggest unsupported keywords or keyword stuffing.** Prioritise recruiter relevance over ATS tricks. Keep it short.

## Inputs

1. **Master resume**: load `resume.md` per `../../references/resume-source.md` (run the finder script first); a resume pasted in the chat overrides it for this run.
2. **Job description** (required): pasted text, file or URL.
3. **JD decoder output** (optional): if `decode-jd` already ran in this conversation, reuse its priorities and keyword groups instead of re-deriving them.

## Process

1. **Priorities**: the 5 things the employer most wants, from the decoder output or the JD (title, first bullets, repetition, "must"), each in one plain sentence.
2. **Keywords**: 10–15 exact phrases from the JD, ranked **Critical / Important / Nice to have**, each with why it matters and what it signals to a recruiter. Include acronym + full form where the JD uses either.
3. **Match analysis** against the resume, using its exact wording:
   - **Strong**: present and easy to spot (top third of the resume, summary, skills, or recent role). Quote where.
   - **Partial**: present but buried (older role, different wording, only implied). Say where it is and why a recruiter may miss it.
   - **Missing**: not clearly present. List only if the resume's experience genuinely supports it (e.g. the user used the tool or did the work under a different name). Unsupported keywords are left out entirely, with one line saying they were excluded.
4. **Recommendations** (guidance only):
   - **Keep as is**: sections already well aligned.
   - **Consider emphasising**: existing achievements most relevant to this role, and what makes them relevant.
   - **Consider adding these keywords**: only supported ones; for each, where it could fit (e.g. "skills line", "summary", "the SonyLiv bullet") and why. Don't write the new wording.
5. **Action plan**: top 5 keywords to check · top 5 achievements to highlight · top 3 sections to review · areas needing no change.

## Output

Reply in chat, concise:

```
## Resume alignment: <Role> at <Company>
### Employer's top 5 priorities
### Critical keywords            (table: keyword · rank · why it matters · what it signals)
### Strong matches               (keyword/theme · where in resume)
### Partial matches              (keyword/theme · where it is · why it's easy to miss)
### Missing keywords to review   (supported only · the experience that supports it)
### Resume positioning recommendations
- Keep as is
- Consider emphasising
- Consider adding these keywords (keyword · where it could fit · why)
### Final action plan            (5 keywords · 5 achievements · 3 sections · no-change areas)
```

## Save it

Write the result to `applications/<company>-<role>/resume-alignment.md` under the output root, following `../../references/output-files.md`: the matches, keywords and action plan. Then show it in chat as usual and end with one line giving the path.

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- Guidance only; no rewritten text, no new resume, no repositioning.
- Never invent experience or suggest unsupported keywords; quote the resume when citing a match.
- Don't edit `resume.md`. If the user wants a tailored copy afterwards, point to `tailor-resume`.
- Keep it practical; no section longer than needed, nothing beyond the sections above.
