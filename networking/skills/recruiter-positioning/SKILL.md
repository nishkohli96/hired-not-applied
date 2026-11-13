---
name: recruiter-positioning
description: Builds recruiter-friendly positioning so recruiters can understand, shortlist and sell the user internally fast - a 50-word recruiter intro, 100-word executive summary, "What I do" line and headline; business-impact themes recruiters notice; a recruiter's-eye marketability and risk analysis (what's easy to pitch, what creates hesitation); search keywords and LinkedIn terms recruiters source on; recruiter-call positioning that sounds low-risk and easy to place; and weak phrases to drop with stronger alternatives. Use when the user says "prepare me for a recruiter call", "how do recruiters see my profile", "make me easier to place", "recruiter pitch", "optimize my LinkedIn for recruiters", or "recruiter meeting tomorrow".
---

# Recruiter positioning

Make the user easy to understand, easy to shortlist and easy to sell to a hiring manager. Think like a recruiter under target pressure: they want to answer **"Where can I place this person?"** in seconds, protect their credibility with the client, and avoid risky or confusing candidates.

## Inputs

1. **Resume**: load `resume.md` per `../../references/resume-source.md` (run the finder script first). Use its proof bank and `## Value statements` if present; keep the new positioning consistent with them (refine, don't contradict).
2. **LinkedIn profile**: pasted text or PDF export, if the user has it. If not, work from the resume and note which LinkedIn sections to check.
3. **Target role**: the user's message, else `resume.md` frontmatter `targets.roles`.
4. **Optional**: geography, industry, compensation range, target companies (frontmatter or message). Use compensation only to sanity-check seniority fit; never write it into any statement or file.

Ask only for the target role if it's missing everywhere.

## Process

Read `references/recruiter-lens.md`, then build the six sections. Rules while working:
- Every claim maps to the resume (cite role/project when it isn't obvious). No inflated titles: if the user led people without the title, say "led a team of N" rather than claiming the title.
- Compare resume and LinkedIn for inconsistencies (titles, dates, headline vs target role); these are the fastest recruiter red flags.
- Write all statements in the user's voice per `../../references/voice.md`: plain, specific, numbers first, no buzzwords. If code execution is available, run `python3 ../../scripts/voice_check.py` on the section 1 statements and fix every hit. Check word counts (50 and 100 words ±10%).

## Output

Reply in chat. Tight bullets:

```
## Recruiter positioning: <Name> → <Target role>
Placement answer in one line: "<seniority> <function> for <type of company/team>, strongest in <2 things>."

### 1. Recruiter positioning summary
- 50-word recruiter intro
- 100-word executive positioning summary
- "What I do" (one sentence)
- Recruiter-friendly headline
### 2. Business impact themes      (3–5 themes; each with the metric/scale/leadership proof; mark the 2–3 achievements most likely to grab a recruiter)
### 3. Recruiter's-eye analysis
- Easy to understand / pitch / commercially attractive / lower risk / memorable because…
- Likely concerns (only those that apply: positioning confusion, breadth, direction, weak impact, overcomplicated messaging, inconsistent narrative, role misalignment)
- Noticed first · Creates hesitation · Biggest clarity wins
### 4. Search optimization          (core title keywords · functional cluster · leadership cluster · industry phrases · LinkedIn fields to update with exact terms · sourcing strings recruiters use)
### 5. Recruiter-call strategy      (positioning angles · themes to repeat · problems you're suited to solve · strengths they'll market · how to sound low-risk and easy to place · confidence signals · what to simplify · where you may create doubt)
### 6. Weak phrases → stronger      (table: avoid · why it hurts · use instead)
```

Then offer once to save the 50-word intro and the headline into `resume.md` under `## Value statements` (as "Recruiter" and "Headline"; update in place, bump `updated:`), so outreach skills reuse them.

## Save it

Write the result to `profile/recruiter-positioning.md` under the output root, following `../../references/output-files.md`: every version of the intro, summary, headline and keywords. Then show it in chat as usual and end with one line giving the path.

## Rules

- Read the `observed:` block in `resume.md` if it has one: the titles recruiters are actually posting, so the headline and search keywords match them.
- Stay inside the six sections. No generic HR advice, motivational language or exaggerated branding.
- Never invent metrics, titles, employers or scope. Keyword lists include only skills the resume supports.
- Keep compensation out of all written statements and files.
