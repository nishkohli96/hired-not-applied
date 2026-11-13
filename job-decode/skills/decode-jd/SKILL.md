---
name: decode-jd
description: Decodes a job description in any field or seniority from the hiring manager's side - why the role exists, the business problems behind it, ranked hiring-manager priorities, what keeps them up at night, the success profile, weighted skills (hard gates, must-have, high-value, nice-to-have), ATS keyword intelligence, interview-prep intelligence with the 10 most likely questions, red flags, and positioning guidance from the user's resume. Use before applying or interviewing, when the user pastes a JD or job link and says "decode this JD", "what are they really looking for", "break down this job", "what does the hiring manager want", "is this role legit", "what keywords should I use", or "analyze this posting".
---

# Decode a job description

Understand the role the way the hiring manager who just got approval to hire understands it: the business need, the priorities, what success looks like, and what a candidate must prove. **Do not summarise the JD.** Infer what sits behind it, explain the reasoning, and keep explicit and inferred points visibly separate.

Think as an executive recruiter, the hiring manager, an organisational psychologist and a business leader at once. Works for any domain, seniority and region.

## Inputs

- **JD**: pasted text, attached file or URL. For a URL, fetch it; if blocked or behind a login, ask for the text.
- **Company name** (optional): if given or stated in the JD, use what's known about its stage and product to sharpen inferences (a quick search is fine; deep company research belongs to `hiring-deep-dive` in the job-radar plugin).
- **Target role** (optional): if the user's target differs from the JD title, decode for the target and note the gap.
- **Resume**: load per `../../references/resume-source.md` (run the finder script first). Used only for the positioning section. If none exists, skip that section and say `resume-setup` would enable it; never block the decode on it.

## Process

1. Read `../../references/domain-lens.md`. Identify domain, **real seniority** (by scope, not title), region, work mode and team stage (new team, backfill, scale-up, turnaround).
2. Read `references/decode-method.md` and work through its ten lenses in order. For every point, tag it **[Explicit]** (quote the JD line) or **[Inferred]** (state the clue it's inferred from).
3. Check red flags (method section 11). Separate "possible scam" from "weak posting".
4. If the user gave salary expectations or constraints (location, stack exclusions, visa), flag conflicts at the top.

## Output

Reply in chat unless the user asks for a document. Bullets, not paragraphs. Use these sections in this order:

```
## <Role> at <Company> - decoded
Domain · Real seniority · Location/mode · Team stage

### Executive summary          (3–5 bullets: what the hiring manager really wants)
### Why this role exists       (need, problems, outcomes sought, reasoning)
### Hiring manager priorities  (top 5, ranked; why · success looks like · how to prove it)
### Business challenges        (most likely ones, with the JD clues)
### Success profile            (technical · functional · leadership · business · personal; what makes someone stand out)
### What keeps the HM up at night (immediate · medium-term · strategic)
### Critical skills            (hard gates · must-have · high-value · nice-to-have; why + weight, ranked)
### ATS & keyword intelligence (critical · important · industry · leadership · outcome; which matter most)
### Interview prep intelligence (topics · experiences to have ready · achievements · the questions behind the questions)
### Likely interview questions (10; why asked · what's evaluated · evidence to bring; no scripted answers)
### Signals & red flags        (quote the JD line for each)
### Your positioning           (from resume: emphasise · highlight · leadership examples · impact stories · de-emphasise)
```

End with one line pointing to the next skill that fits: `fit-check` (score the match), `tailor-resume`, `interview-answers` (a model answer under every likely question), or `interview-prep` (story bank and mock interview).

## Save it

Write the result to `applications/<company>-<role>/decode-jd.md` under the output root, following `../../references/output-files.md`: the whole decode, including the JD text or its link. Then show it in chat as usual and end with one line giving the path.

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- Do not repeat the JD back. Every bullet must add an inference, a ranking, a weight or a reason.
- Quote the JD for every [Explicit] point; give the clue for every [Inferred] one. Never present a guess as fact.
- Positioning uses only the user's real experience from the resume; never invent achievements. Missing evidence for a top priority is called out as a gap to prepare for.
- Interview questions get preparation guidance, not scripted answers (answers live in `interview-answers`).
- Don't judge the employer's legality; describe signals and let the user decide.
- No generic career advice and nothing beyond these sections.
