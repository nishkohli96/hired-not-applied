---
name: interview-answers
description: Turns one job description into a question-and-answer study sheet - the 15-18 questions this employer is most likely to ask, each with why they're asking it, what they're really testing, and a model answer written in the user's voice from their own resume, plus a one-line follow-up for when they push. Use when the user pastes a JD and says "what will they ask me and what do I say", "interview questions with answers for this role", "likely questions and how to answer them", "prepare answers for this JD", "give me a Q&A sheet", or "common interview questions for this job". For a full prep session built around a specific interview (stage, interviewer, company, STAR story bank, mock practice, questions to ask), use interview-prep instead.
---

# Interview questions and answers from a JD

Produce a study sheet the user can read on the way to the interview: the questions this employer is most likely to ask, and an answer to each in their own words, built only from their real experience.

Works for any domain, seniority and region. The JD drives the questions; the resume drives the answers.

## Inputs

- The JD. Decode it first with the `decode-jd` steps to get the hard gates, must-haves, business problems and seniority. Without that, questions drift to generic.
- The user's resume, loaded per `../../references/resume-source.md`. The proof bank is the source for every claim in an answer.
- Domain, seniority and region conventions: `../../references/domain-lens.md`.
- Answer shapes, lengths and the gap formulas: `references/answer-method.md`. Read it before writing step 2.
- Optional: interview stage, company name, interviewer's role. Use them to weight the mix, never ask for them before starting.

## Process

1. **Derive the question set from the JD, not from a stock list.** Every question must trace to something in the posting: a weighted requirement, a stated responsibility, a business problem, an odd phrase, or a gap between the JD and the resume. Aim for 15-18, allocated by what the JD emphasises:

   | Group | How many | Drawn from |
   |---|---|---|
   | Opening and motivation | 3 | Tell me about yourself, why this role, why this company, why you're leaving |
   | Core functional or technical | 4-6 | Each hard gate and must-have skill, in the JD's own words |
   | Behavioural | 3-4 | One per competency the JD implies (ownership, conflict, ambiguity, prioritisation, mentoring) |
   | Scenario | 2-3 | The business problems behind the role, posed as "how would you handle…" |
   | Gap probes | 1-3 | Every requirement the resume doesn't cover, and every date gap, short tenure or layoff |
   | Closing | 1-2 | Notice period, location or work mode, compensation expectations |

2. **For each question, write four things:**
   - **Q** — phrased the way an interviewer would actually say it.
   - **Why they ask** — one line tying it to the JD requirement or risk behind it.
   - **Answer** — first person, spoken language, 45-90 seconds (roughly 110-200 words); 30-60 for a factual one. Lead with the answer, then the evidence, then the outcome. Use the user's real numbers from the proof bank.
   - **If they push** — one line with the obvious follow-up and how to handle it.

3. **Mark the evidence behind every answer** so the user knows what is solid:
   - ✅ backed by a specific achievement in the resume
   - 🟡 partly backed; the answer leans on adjacent experience, and says so honestly
   - ❌ no evidence; the answer is an honest "haven't done exactly that, here's the closest thing and how I'd approach it", with `[your example here]` wherever the user must supply a real detail

4. **Write the gap answers straight.** For a missing skill, a layoff, a break or a short tenure: acknowledge in one sentence, no apology or over-explaining, then move to evidence of the adjacent capability and close forward. Never invent a reason or a credential.

5. **Compensation and notice:** give a range strategy and the sentence to say, never a number the user hasn't given.

6. **Close with a rehearsal list:** the 3 questions most likely to decide the outcome, and the 2 weakest answers with what evidence would strengthen them.

## Output

A Q&A sheet in chat, grouped by the table above, questions numbered. Lead with one line naming the role and where the question set came from. End with the rehearsal list.

Offer once to save it as a document for printing or phone reading, and to run the same questions as a mock interview with `interview-prep`.

## Save it

Write the result to `applications/<company>-<role>/interview-answers.md` under the output root, following `../../references/output-files.md`: every question with its answer in full, plus the rehearsal list. Then show it in chat as usual and end with one line giving the path.

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- Never invent an employer, title, metric, tool or outcome. Missing detail becomes `[your example here]`, flagged in the rehearsal list.
- Answers sound like the user talking, not like an essay: short sentences, contractions, no corporate filler, no "I'm passionate about", no "leverage", no em dashes.
- Every question traces to the JD or to a resume gap. If a question can't be traced, drop it.
- Don't repeat the same achievement in more than two answers; spread the proof bank across the set.
- Keep the employer's own vocabulary for skills and systems, so the answers echo the posting.
- Don't coach on body language, clothing or interview logistics; that's `interview-prep`.
