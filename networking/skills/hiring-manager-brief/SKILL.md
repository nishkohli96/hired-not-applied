---
name: hiring-manager-brief
description: Builds a strategic brief on a specific hiring manager before a networking call or interview - their business context and pressures, hiring mindset (what they value, dislike, see as credible, worry about, expect from the role), the problems they're solving and where the user's background is commercially relevant, three exploratory questions, observations, credibility angles, topics and mistakes to avoid, which qualities they'll respond to, and the tone, decision style, optimisation goal and strongest positioning for the user. Use when the user says "research the hiring manager", "brief me on X before my interview", "how does this manager think", "prep me for a call with the hiring manager", or shares a hiring manager's LinkedIn profile.
---

# Hiring manager brief

Help the user understand how one hiring manager likely thinks, what pressures they're under, and how to come across as relevant and credible to them. Commercially grounded, concise, senior-level. For a general coffee chat with a non-hiring contact, `common-ground` fits better; for company-wide hiring signals, `hiring-deep-dive` (job-decode plugin).

## Inputs

1. **Hiring manager's profile** (required): pasted LinkedIn text, LinkedIn PDF export or URL. If the URL can't be read, ask the user to paste About, Experience and recent activity.
2. **Company** (required; usually on the profile).
3. **Target role**: from the user's message, else `resume.md` frontmatter `targets.roles`.
4. **User's background**: load `resume.md` per `../../references/resume-source.md` (run the finder script first); use the proof bank and value statements. A pasted LinkedIn profile adds to it.
5. **Optional media**: articles, talks, podcasts, posts about or by the manager, and a JD if there is one.

Ask only for what's missing among 1–2, in one message.

## Research

Run a few searches in one turn: the company's recent news (funding, launches, expansion, layoffs, leadership changes, results) and public professional content by the manager (talks, articles, podcasts, posts, company blog). Date everything. Public professional information only; nothing about their private life, family or personal social accounts.

## Analyse

Read `references/manager-lens.md`, then work through its five parts. Every inference names its basis (profile line, tenure, company signal, their own words) and is phrased as likely, not certain. No personality labels or clichés; describe observable priorities and behaviours. If evidence is thin, say so and keep the inference modest.

## Output

Reply in chat. Bullets, tight, no section over ~6 bullets:

```
## Hiring manager brief: <Name>, <Title> at <Company> → <Target role>
One line: what this person is most likely accountable for right now, and the user's best angle.

### 1. Business context        (priorities · pressures: operational/commercial/technical/leadership · growth or change signals · current initiatives · org challenges)
### 2. Hiring mindset          (values · dislikes in interviews · credibility signals · risks they'll test for · expectations of the role)
### 3. Strategic opportunity   (problems they're solving · where you're commercially relevant · how to position · themes from your experience that will land · value-add angles)
### 4. Conversation prep
- Exploratory questions (3)
- Observations to drop naturally (2–3)
- Credibility angles (2–3, tied to your proof bank)
- Avoid / handle carefully
- Common mistakes with this type of manager
- Responds well to: (rank the most relevant of strategic thinking · execution depth · operational reliability · innovation · leadership maturity · communication clarity · domain expertise, each with the signal)
### 5. Interview & networking strategy
- Tone: formal ↔ conversational (with why)
- Decision style: data-driven / relationship-driven / execution-driven (with why)
- Optimising for: (top 1–2 of speed · stability · transformation · scaling · stakeholder management · technical depth · commercial outcomes, with why)
- Strongest positioning for you (2–3 bullets)
Sources: (numbered links for any researched facts)
```

Write the questions, observations and credibility lines in the user's voice per `../../references/voice.md`. If code execution is available, run `python3 ../../scripts/voice_check.py` on them and fix every hit.

## Save it

Write the result to `people/<person>-brief.md` under the output root, following `../../references/output-files.md`: the full brief. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- Don't go beyond the sections above. No generic HR or interview advice, no personality clichés, no flattery.
- Never invent facts about the manager or the company; every researched fact has a date and a source.
- Credibility angles use only the user's real experience.
- Keep inferences proportionate to the evidence; flag low-confidence ones.
