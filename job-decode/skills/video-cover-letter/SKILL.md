---
name: video-cover-letter
description: Writes a 2-3 minute spoken video cover letter script (280-380 words) for a specific role - Excitement, Match, Relevance, one Achievement told as challenge / action / outcome, and a confident close - built from the user's resume and the job description, written for natural speech rather than reading, plus practical delivery coaching on tone, pace, body language, eye contact, energy and mistakes. Use when the user says "video cover letter", "intro video for this job", "record a video for the hiring manager", "Loom intro for my application", or "script for a video application".
---

# Video cover letter script

Create curiosity, not a spoken resume. The hiring manager should finish the video knowing why the user wants this role, why they fit, why it matters to the company now, and one achievement they'll remember.

## Inputs

1. **Resume**: `resume.md` per `../../references/resume-source.md` (run the finder script first); use the proof bank and value statements.
2. **Company** and **role** (required).
3. **Job description** (optional, recommended). If `decode-jd` ran in this conversation, reuse its priorities.

Ask only for company and role if missing.

## Step 1: Profile and opportunity (brief, not shown in full)

- From the resume: strongest strengths, most relevant experiences, the single achievement that best supports **this** role (not necessarily the biggest), and the value proposition.
- From the company/JD (a quick search for one recent, specific company detail is fine): why the role matters now, the business problems behind it, which parts of the user's background map to them. Keep company talk short in the script.

## Step 2: Write the script

Follow `references/script-guide.md`. Sections and spoken timing:

| Section | Time | Purpose |
|---|---|---|
| Excitement | 30–45 s | Who you are in one line; a specific reason this role/company interests you |
| Match | 45–60 s | How your background lines up: industry, leadership, functional expertise, business impact |
| Relevance | 30–45 s | The problem they're likely solving and why your experience fits it now |
| Achievement | 45–60 s | One story: challenge → what you did → business outcome → why it matters for them |
| Closing | 15–20 s | Thanks, interest in talking further, confident end |

Total **280–380 words** (~130 spoken words per minute). Write for the ear: short sentences, contractions, one idea per sentence, numbers said the way people say them ("about two million viewers", "cut it from four seconds to under two"), no lists read aloud, no stage-y lines.

Every fact and number must come from the resume. Follow the plugin voice rules (no clichés, no exaggerated enthusiasm). If code execution is available: count words per section and in total, and run `python3 ../../scripts/voice_check.py` on the script; fix every hit and keep within the word range.

## Output

Reply in chat:

```
## Video cover letter: <Role> at <Company>
### Executive summary          (3 bullets: why this should land with the hiring manager)
### Script                     (total words · est. time)
**Excitement** (~N s)
...
**Match** (~N s)
...
**Relevance** (~N s)
...
**Achievement** (~N s)
...
**Closing** (~N s)
...
### Delivery tips              (tone · pace · body language · eye contact · energy · mistakes to avoid; short bullets)
```

Optional, one line at the end: mark 2–3 words per section to stress, if the user wants a teleprompter-ready version.

## Save it

Write the result to `applications/<Company>/video-cover-letter-<role>.md` under the output root, following `../../references/output-files.md`: the script and the delivery notes. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- One achievement only; no resume walkthrough; business value over duties.
- No generic company praise ("I've always admired…"); one specific reason or none.
- Never invent achievements, numbers or company facts.
- Stay within the sections above.
