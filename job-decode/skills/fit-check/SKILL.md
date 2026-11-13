---
name: fit-check
description: Scores how well a candidate matches a specific job and builds a gap plan - requirement-by-requirement evidence, match score, deal-breakers, how to position weak spots, and whether to apply, network first, or skip. Use when the user asks "am I a fit for this", "should I apply", "match my resume to this JD", "what am I missing for this role", "fit score", or shares both a resume and a JD. This scores the candidate and gives an apply / network first / skip call; for document-level guidance on an existing resume (keywords, what to emphasise, no rewrite) use resume-alignment, and to produce a tailored version use tailor-resume.
---

# Fit check

Compare one candidate against one job and give an honest go / network-first / skip call.

## Inputs

1. The JD (text, file or URL). If not yet decoded, run the decode steps from the `decode-jd` skill silently to get the requirement list.
2. The candidate profile. Follow `../../references/candidate-profile.md` to gather it.

## Process

1. Build a requirement matrix. For each hard gate, must-have and nice-to-have, mark:
   - ✅ **Strong**: direct evidence in the profile (quote it).
   - 🟡 **Partial / transferable**: adjacent skill, shorter tenure, different tool in same category.
   - ❌ **Missing**.
2. Score:
   - Any unmet hard gate → cap score at 40 and say which gate.
   - Otherwise: must-haves weigh 70%, nice-to-haves 20%, seniority/domain alignment 10%. Strong = 1, Partial = 0.5, Missing = 0.
   - Report as a number /100 with a one-word band: **Strong (75+)**, **Competitive (60–74)**, **Stretch (45–59)**, **Long shot (<45)**.
3. Over-qualification check: flag if the candidate's level is clearly above the role and how to address it.
4. Gap plan, for each 🟡 and ❌ must-have:
   - **Reframe**: which existing experience to lead with and the wording to use.
   - **Close fast**: a concrete action doable in under 2 weeks (small project, certification module, portfolio piece) if one exists.
   - **Address in conversation**: a one-sentence honest answer for interviews.
5. Recommendation:
   - **Apply now** (Strong/Competitive, no gate issues).
   - **Network first** (Stretch, or Competitive at a high-volume employer): suggest the networking plugin (`outreach-kit`: resume + JD + contact name) to reach the hiring manager, HR or a team member, because a referral offsets gaps.
   - **Skip / save** (hard gate missing, or constraint conflict), with the reason.

## Output

Reply in chat:

```
## Fit: <Role> at <Company> - <score>/100 (<band>)
**Call:** Apply now | Network first | Skip — one-line reason

| Requirement | Type | Match | Evidence / note |
|---|---|---|---|

### Your strongest angles (top 3, to lead resume and outreach)
### Gaps and how to handle them
### Watch-outs (over-qualification, constraints, eligibility)
```

Offer one next step: tailor the resume (`tailor-resume`), prep interviews (`interview-prep`), or draft outreach (networking plugin).

## Save it

Write the result to `applications/<Company>/fit-check-<role>.md` under the output root, following `../../references/output-files.md`: the score, the evidence and the call. Then show it in chat as usual and end with one line giving the path.

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- Be honest; inflated scores waste the user's time. Never invent evidence.
- Evidence must quote or closely paraphrase the profile.
- Work authorization and location gates: state the requirement, never assume the user's status.
