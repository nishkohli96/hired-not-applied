---
name: interview-prep
description: Builds a role-specific interview prep kit for any field - likely questions predicted from the JD (behavioral, technical/functional, situational, role-play, case), STAR stories mapped from the candidate's real experience, answers for gaps and tricky questions, and questions to ask. Use when the user says "prep me for this interview", "what will they ask", "mock interview", "help with STAR answers", "I have an interview with X", or "practice questions for this role". For a JD-only question-and-answer study sheet with a model answer under every question, use interview-answers instead.
---

# Interview prep

Prepare the user for a specific interview, grounded in the JD and their real experience.

## Inputs

- JD (decode it first with the `decode-jd` steps).
- Candidate profile (`../../references/candidate-profile.md`).
- Optional: interview stage (recruiter screen, hiring manager, technical/functional, panel, case, final/exec), interviewer names/roles, format, duration.
- Optional: company brief from `company-intel` (job-radar plugin).

## Process

1. **Predict questions** (10–15), weighted by stage and domain (`../../references/domain-lens.md`):
   - Screen: motivation, background walk-through, salary/notice/location, why leaving.
   - Behavioral: one per must-have competency (leadership, conflict, failure, ambiguity, prioritization).
   - Functional/technical: domain-specific (coding/system design for engineering; case or numbers for consulting/finance; role-play for sales; clinical scenarios for healthcare; portfolio walk-through for design/creative; lesson demo for teaching).
   - Gap probes: each 🟡/❌ from a fit check.
2. **Story bank**: build 5–7 STAR stories (Situation, Task, Action, Result + one-line reflection) from the user's real achievements. Map each story to the questions it answers. Mark missing details as `[ask user]`.
3. **Tough questions**: draft honest, short answers for gaps, career breaks, layoffs, short tenures, over-qualification, salary expectations (give a range strategy, not a number).
4. **"Tell me about yourself"**: 60–90 second version: present → past highlights → why this role.
5. **Questions to ask**: 5, tailored to stage and interviewer.
6. **Logistics checklist**: format, materials (portfolio, code environment, references), time zone.

## Reuse

If the user already ran `interview-answers` for this JD, build on that question set and those answers instead of regenerating them; add the story bank, the questions to ask and the mock.

## Mock mode

If the user asks for a mock interview: ask one question at a time, wait for their answer, then give brief feedback (what worked, what to tighten, a stronger version in their voice), then the next question. Finish with a scorecard of strengths and 3 fixes.

## Output

Prep kit in chat for one-off use. If the user wants to keep or print it, offer to save it as a document.

## Save it

Write the result to `applications/<Company>/interview-prep-<role>.md` under the output root, following `../../references/output-files.md`: the prep kit. Only if a mock interview was actually run, with at least one answer from the user, append its scorecard to the same file; with no mock, write no scorecard section. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- Stories use only the user's real experience; never fabricate outcomes.
- Keep model answers in first person and plain spoken language, not essay prose.
