---
name: recommendation-strategy
description: Builds a LinkedIn recommendation and reference strategy - rates each potential recommender's value (high / medium / low) on seniority, credibility, closeness, ability to speak to results and relevance to the target role, ranks who to approach and what hiring managers will infer, assigns each person 3-5 themes, prepares talking points from real shared work, writes a natural request message and an optional briefing note, and assesses the overall mix for gaps. Use when the user says "who should I ask for a recommendation", "LinkedIn recommendation request", "ask my old manager for a recommendation", "references for my job search", or "help me get recommendations".
---

# Recommendation strategy

Collect a few strong, specific, credible recommendations that support the user's target role, not many generic ones. Think like a recruiter reading LinkedIn recommendations and references.

## Inputs

1. **Resume**: `resume.md` per `../../references/resume-source.md` (run the finder script first); use the proof bank and value statements. A pasted LinkedIn profile adds existing recommendations (count them by type and date).
2. **Target role and career objective**: user's message, else `resume.md` frontmatter `targets`.
3. **People** (required): for each, relationship type (former manager, colleague, direct report, client, stakeholder, partner), company, period worked together, and any context. If the user gives only names, ask for these fields in one message.

## Process

Read `references/recommendation-guide.md`, then:
1. **Assess** each person's value: High / Medium / Low, scored on seniority, credibility (title, company, relevance of their own field), closeness of working relationship, ability to speak to results, relevance to the target role, and recency. Explain the rating.
2. **Rank** the people worth approaching. For each: why valuable, what makes their word credible, what a hiring manager will infer from it. Recommend skipping low-value ones and say why.
3. **Themes**: 3–5 per person, only themes they actually witnessed.
4. **Talking points**: experiences they may remember, projects they saw, achievements they observed, outcomes they can validate. Use **only** facts from the resume or the context the user gave about that person; attach each point to the shared company and period. Mark anything the user should confirm.
5. **Request message**: one per person (adapted to relationship and channel), in the user's voice per `../../references/voice.md`: short, warm, specific about what you worked on together, easy to say yes or no, no pressure, no flattery, no AI phrasing. Offer to return the favour only if natural.
6. **Briefing note** (sent only after they agree): context and why the user is seeking recommendations now, areas they may wish to highlight, relevant projects and achievements with numbers, and an explicit line that they should write in their own words. Helpful, not prescriptive. **Never draft the recommendation itself.**
7. **Portfolio assessment**: strengths and gaps of the set (plus existing recommendations if known), and the ideal mix for the target role.

If code execution is available, run `python3 ../../scripts/voice_check.py` on the request messages and briefing notes and fix every hit.

## Output

Reply in chat:

```
## Recommendation strategy → <target role>
### Recommendation priority ranking   (table: rank · person · relationship · value H/M/L · why)
### Best people to approach           (per person: why valuable · what makes it credible · what hiring managers will infer)
### Recommendation themes by person   (3–5 each)
### Suggested talking points          (per person: experiences · projects · achievements · outcomes they can validate)
### Recommendation request messages   (per person, paste-ready, with channel)
### Recommendation briefing notes     (per person, paste-ready, sent after they agree)
### Recommendation portfolio assessment (strengths · gaps · ideal mix · who to add if a gap remains)
```

## Save it

Write the result to `profile/recommendations.md` under the output root, following `../../references/output-files.md`: the ranked list and the asks. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- Quality over quantity; say who not to ask.
- No invented achievements, projects or numbers; talking points come only from the resume or what the user said about the person.
- Don't ghostwrite recommendations or ask anyone to sign text written for them; the briefing note gives facts and areas, the recommender writes.
- Keep people's details to the professional context the user supplied.
- Stay within the sections above; no generic praise or career advice.
