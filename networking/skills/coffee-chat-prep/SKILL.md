---
name: coffee-chat-prep
description: Full preparation for an exploratory coffee chat with an influential contact, recruiter, hiring manager or senior leader - their professional context and likely priorities, conversation themes and shared ground, the conversation goal and the stance to take (peer, learner, collaborator, problem solver, insider), 14 tailored questions in four groups, how to introduce and position the user without self-promotion, signals of hiring or referral influence and how to keep the relationship going, and the mistakes that read as transactional or weaken executive presence. Use when the user says "prep me for a coffee chat", "I have a networking call with X", "informational interview with X", "what should I ask X", or shares a profile ahead of a networking conversation.
---

# Coffee chat prep

Prepare the user for a calm, curious, senior-level conversation that builds familiarity and credibility and leaves the door open for future opportunities. This is the full prep. For a quick overlap check between two profiles, use `common-ground`; for a hiring-manager interview or a call about a specific open role, `hiring-manager-brief` goes deeper on that manager's hiring mindset.

## Inputs

1. **Their profile** (required): pasted LinkedIn text, PDF export or URL (ask for a paste if the URL can't be read).
2. **Their company** (usually on the profile).
3. **User's background and target role**: from `resume.md` per `../../references/resume-source.md` (run the finder script first), using the proof bank and value statements; the user's message overrides it. A pasted LinkedIn profile of the user adds detail.
4. Optional: how the chat came about, its length and format.

Ask only for what's missing among 1–2, in one message.

## Research

A few searches in one turn: the company's recent news and the industry trends around the person's function, plus any public professional content by the person (talks, articles, posts). Date everything. Public professional information only.

## Prepare

Read `references/coffee-chat-method.md` and `../common-ground/references/conversation-guide.md` (shared-ground dimensions, priority signals, style table, transactional-risk check). Then build the seven sections below. Every inference about the person states its basis and stays proportionate to the evidence. Questions must not be answerable from their LinkedIn profile.

Write every line the user will say (intro, questions, positioning lines, follow-up messages) in the user's voice per `../../references/voice.md`: calm, specific, curious, no clichés, no exaggerated enthusiasm, no corporate stiffness. If code execution is available, run `python3 ../../scripts/voice_check.py` on those lines and fix every hit.

## Output

Reply in chat. Bullets, scannable on a phone before the meeting:

```
## Coffee chat prep: <Name>, <Title> at <Company>
Why this conversation matters, in one line.

### 1. Professional context      (background in 2–3 bullets · expertise and influence · likely priorities/interests · leadership-style signals · why it matters strategically)
### 2. Conversation themes        (what they care about · business/industry themes · natural overlap · shared experiences or challenges · relevant trends tied to their work)
### 3. Conversation strategy      (goal · realistic success after one chat · tone · stance: peer / learner / collaborator / problem solver / industry insider, with why · how to build comfort and trust)
### 4. Questions
- Exploratory (5)
- Business-focused (3)
- Industry / market trends (3)
- Career growth / leadership (3)
(mark the 2–3 that best signal commercial awareness)
### 5. Your positioning           (30-second intro · how to frame your experience for them · 2–3 credibility points to mention only when relevant · where your experience will resonate)
### 6. Relationship & opportunity (influence signals for hiring/referrals · openness signals to watch for in the chat · follow-up within 24 h · later follow-up opportunities · low-pressure ways to stay familiar)
### 7. Risks & mistakes           (what would sound transactional or desperate · topics to handle carefully · common mistakes · oversharing signs · patterns that reduce executive presence)
```

## Save it

Write the result to `people/<person>-coffee-chat.md` under the output root, following `../../references/output-files.md`: the full prep. Then show it in chat as usual and end with one line giving the path.

## Rules

- Stay inside the seven sections. No generic networking advice or clichés.
- Never invent facts about the person, the company or the user; researched facts carry a date and source (list sources at the end if any were used).
- No job or referral ask in a first chat unless the person offers; the follow-up plan covers when and how it can come later.
- Credibility points use only the user's real experience.
