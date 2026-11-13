---
name: follow-up
description: Writes follow-up messages and full follow-up sequences for job seekers in any field - after no reply to a LinkedIn note, InMail or cold email; after applying; after a networking call; after interviews (thank-you notes); after silence from a recruiter; after rejection; and for checking offer status. Use when the user says "follow up with X", "they didn't reply", "write a follow-up email", "thank-you email after my interview", "chase the recruiter", "it's been a week since my interview", or "follow-up sequence".
---

# Follow-ups

Write the next touch, or a whole sequence, for any job-search situation.

## Inputs

- The original message (paste) and when it was sent, or the event (applied on date, interview on date with whom).
- Channel (LinkedIn DM, InMail, email).
- Anything new since: their recent post, company news, the user's new result or project.

## Process

1. Read `../../references/voice.md` and `../../references/outreach-principles.md` (timing and "stop after 3").
2. Identify the situation and stage, then use `references/sequences.md`.
3. Each follow-up must add something: a new hook, a short idea, a relevant link, an update from the user, or a narrower ask. Never just "bumping this".
4. Keep follow-ups 25–60 words (thank-you notes up to 120), reply in the same thread for email, same chat for LinkedIn.
5. When the user asks for a sequence, return all touches with day offsets and suggested dates (from the sent date, skipping weekends in the recipient's region).

## Before showing drafts

Run the voice self-check (`../../references/voice.md`). If code execution is available, save the drafts to a temp file and run `python3 ../../scripts/voice_check.py <file>`; fix every hit. Confirm every number appears in the user's resume.

## Output

Each message as a paste-ready block labelled with day and purpose. For sequences, end with a one-line schedule (e.g. `Day 0 Tue 3 Nov → Day 4 Mon 9 Nov → Day 10 Fri 13 Nov → Day 18 Mon 23 Nov`). Offer to log dates with `outreach-tracker` or set reminders if a scheduling tool is available.

## Save it

Write the result to `applications/<company>-<role>/follow-up.md` under the output root, following `../../references/output-files.md`: the whole sequence with its dates; append later follow-ups to the same file. Then show it in chat as usual and end with one line giving the path.

## Rules

- Max 3 follow-ups after the first message with no reply; then a polite close and stop.
- Never guilt ("I haven't heard back…", "Did you see my message?").
- Thank-you notes go within 24 hours of an interview, one per interviewer, each referencing something specific from that conversation.
- After a rejection, keep it gracious and short; ask for feedback once, optionally.
