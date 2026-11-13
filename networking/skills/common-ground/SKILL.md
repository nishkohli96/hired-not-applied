---
name: common-ground
description: Quick overlap check between the user and one other professional - shared ground across industry, companies, clients, career path, education and challenges, rated strong/medium/light with evidence from both profiles, plus openers, three questions, credibility points, a transactional-risk check and the conversational style they will respond to. Use when the user says "find common ground with X", "what do I have in common with X", "how do I connect with X", or "conversation starters for X". For full coffee-chat preparation use coffee-chat-prep; for a hiring manager use hiring-manager-brief.
---

# Common ground: prepare for one networking conversation

Help the user walk into a senior-level conversation able to talk naturally, find real overlap fast, and leave a relationship that could later turn into a referral, hire or opportunity, without sounding transactional.

## Inputs

1. **User's profile**: load `resume.md` per `../../references/resume-source.md` (run the finder script first). If the user also pastes their LinkedIn profile, use both (LinkedIn adds posts, volunteering, education, recommendations).
2. **Other person's profile** (required): pasted LinkedIn text, a LinkedIn PDF export, or a URL. LinkedIn URLs usually can't be read; if fetching fails, ask the user to paste the profile (About, Experience, Education, recent activity). One request, no other questions.
3. Optional context the user gives: how the meeting came about, the company or role the user is interested in, the meeting format and length.

If the person has public professional content (company blog posts, talks, podcasts, articles under their name), a short search is fine to find current topics. Public, professional information only; nothing about their private life, family or personal social accounts.

## Process

Read `references/conversation-guide.md`, then:

1. **Line up both careers** side by side (companies, clients, industries, functions, locations, years, education, certifications, communities, themes in their posts).
2. **Shared ground**: match on the six dimensions in the guide. Rate each overlap **strong** (same company/client/school/specific challenge), **medium** (same industry, function or ecosystem) or **light** (adjacent themes). Lead with strong ones. Never invent overlap; if it's thin, say so and use the user's curiosity about their path as the bridge.
3. **Strategic alignment**: what they likely care about and are dealing with now (from their role, tenure, company stage and recent activity), where the user's background is useful to them, and signals of hiring influence (title, team size, "hiring" posts, recently promoted or joined, building a new team). Label inferences and their basis.
4. **Conversation prep**: write openers, observations and questions in the user's voice following `../../references/voice.md` (human, specific, assertive but warm; no AI phrasing). Credibility points come from the resume's proof bank and value statements, phrased to slip into conversation, not as a pitch.
5. **Relationship strategy**: pick the most realistic goal for a first conversation and the style they'll respond to best, with the reason.

If code execution is available, run `python3 ../../scripts/voice_check.py` on the openers, observations and questions and fix every hit.

## Output

Reply in chat. Bullets, short, scannable before a meeting:

```
## Coffee-chat prep: <Name>, <Title> at <Company>
One line: who they are relative to you, and the strongest bridge.

### 1. Shared ground          (strongest first; each tagged strong/medium/light with the evidence from both profiles)
### 2. Strategic alignment    (overlap · what they care about · likely current priorities · how you're relevant · hiring-influence signals)
### 3. Conversation prep
- Openers (3)               natural, specific, first 30 seconds
- Observations (2–3)        to mention when the moment fits
- Exploratory questions (3) open, about their thinking, not "do you have a job"
- Avoid / handle carefully
- Credibility points (2–3)  one-liners to drop in only when relevant
- Transactional-risk check  what could make you sound needy or salesy here, and the fix
### 4. Relationship strategy  (goal of this conversation · realistic success after one chat · the style they'll respond to, with why · the natural next step)
```

## Save it

Write the result to `people/<person>-common-ground.md` under the output root, following `../../references/output-files.md`: the overlap and the openers. Then show it in chat as usual and end with one line giving the path.

## Rules

- No generic networking advice, no flattery of the other person, nothing beyond the sections above.
- Every shared-ground point cites both sides' evidence. Every inference about their priorities says what it's based on.
- Never suggest asking for a job or referral in a first conversation unless the user says the person offered; the guide covers when it's appropriate later.
- Never invent mutual connections, shared history or facts about either person.
- Keep the other person's information to what's professionally relevant; don't speculate about personal circumstances.
