---
name: value-statement
description: Uncovers the value a person consistently creates across their career - recurring problems solved and outcomes delivered, strengths with evidence, value-creation and business-impact themes, leadership identity, unique value proposition, evidence strength for every claim, and blind spots - then writes four value statements (one-sentence, executive, recruiter, LinkedIn) and saves them to resume.md so every outreach and resume skill reuses them. Use when the user says "what's my value proposition", "write my value statement", "how should I position myself", "personal branding statement", "elevator pitch", "LinkedIn headline/about", "what makes me different", or shares a brag sheet, reviews or testimonials.
---

# Value statement: the value you keep creating, in words that stick

Find the **patterns** of value creation across the user's career and turn them into credible, memorable positioning. **Do not summarise the resume.** Look past titles and duties to outcomes, recurring strengths and business impact. Think as an executive recruiter, hiring manager, executive coach and consultant at once, and challenge weak conclusions.

## Step 0: Inputs

1. Load the resume per `../../references/resume-source.md` (run the finder script first). Use its proof bank.
2. Use anything else the user provides: LinkedIn profile or export, brag sheet, awards, performance reviews, testimonials, recommendations, promotion history, major projects. Third-party words (reviews, recommendations, awards) count as stronger evidence than self-description.
3. Don't ask for more up front. At the end, name the 1–3 extra inputs that would most strengthen weak claims (e.g. "a performance review would confirm the mentoring claim").

## Step 1: Analyse

Read `references/value-method.md` and work through its lenses in order: career patterns → strengths → value creation → impact themes → leadership identity → unique value proposition → evidence validation → blind spots. Rules while analysing:
- A pattern needs evidence from **at least two roles or projects**. One-off achievements support a pattern; they aren't one.
- Separate **activities** (built, managed, worked on) from **outcomes** (cut, grew, shipped to N users, won). Only outcomes create value claims.
- Every claim cites its evidence (role/project + fact). Label inferences.

## Step 2: Write the statements

Follow the formulas in `references/value-method.md` and the voice rules in `../../references/voice.md` (assertive, specific, no clichés or AI phrasing). Write:
- **One-sentence** (≤30 words).
- **Executive** (60–90 words; networking, interviews, introductions).
- **Recruiter** (40–60 words; role, years, core stack/domain, 2 proof points, availability if in the resume).
- **LinkedIn** (a headline ≤220 characters, plus a 3–5 line About opener in first person).

If code execution is available, run `python3 ../../scripts/voice_check.py` on the statements and fix every hit. Every number must appear in the user's materials.

## Output

Reply in chat, bullets not paragraphs, in this order:

```
### Executive summary            (overall value proposition, 2–3 bullets)
### Career patterns              (problems solved · outcomes delivered · challenges tackled · where most valuable · work you excel at)
### Strengths                    (technical · functional · leadership · commercial · strategic; evidence · why it matters · how it creates value)
### How you create value         (strongest value types, ranked)
### Business impact themes       (3–5, each with evidence)
### Leadership identity          (relied on for · associated with · managers value · teams appreciate)
### Unique value proposition     (problems you're best at · situations · organisations that benefit most · best-fit roles)
### Value statements             (one-sentence · executive · recruiter · LinkedIn)
### Evidence check               (strong · moderate · weak, per major claim)
### Blind spots                  (undervalued strengths · overlooked achievements · underrated experience · where positioning could be stronger)
### Final value assessment       (strengths across roles · leadership qualities relied on · outcomes created · problems solved; 1–2 bullets each)
```

## Step 3: Save for reuse

Offer once to save the four statements into `resume.md` under a `## Value statements` section (update in place if it exists, bump `updated:`). Once saved, `outreach-kit`, `cold-email`, `linkedin-message`, `referral-request` and job-decode's `tailor-resume` and `interview-prep` use them as the user's positioning.

## Rules

- No resume summary, no generic strengths ("hard-working", "team player", "passionate"), no clichés.
- Weakly supported claims stay out of the statements; list them under the evidence check with what would prove them.
- Never invent numbers, titles, awards or testimonials. Leadership-identity points are inferences from observable evidence; say what each is based on.
- Stay within the sections above.
