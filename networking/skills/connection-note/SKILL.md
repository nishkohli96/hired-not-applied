---
name: connection-note
description: Writes short personalized LinkedIn connection request notes (within the 200/300 character limit) for job seekers in any field - to recruiters, hiring managers, team peers, alumni, ex-colleagues and senior leaders. Use when the user says "write a LinkedIn connection note", "connection request message", "LinkedIn invite note to X", "what should I write when connecting", or shares a LinkedIn profile and wants to connect.
---

# LinkedIn connection note

Write a note that gets the request accepted. The goal is the connection, not the job; the ask comes later.

## Inputs

- Recipient: name, title, company, and anything known about them (profile text, recent post, shared background). If the user gives a LinkedIn URL and the page can't be read, ask them to paste the About/recent activity.
- Purpose: role they're applying to, informational, alumni, or general.
- Sender profile and proof bank (`../../references/sender-profile.md`).
- Account type if known (free accounts have a lower character cap; default to ≤200 characters).

## Process

1. Read `../../references/voice.md` and `../../references/outreach-principles.md`.
2. Pick the strongest hook from the personalization hierarchy.
3. Pick the pattern from `references/patterns.md` that fits recipient + purpose.
4. Write **3 variants** with different angles (e.g. hook-led, shared-background-led, role-led). Each ≤200 characters unless the user says they have Premium (≤300).
5. Count characters (including spaces) and show the count for each.

## Before showing drafts

Run the voice self-check (`../../references/voice.md`). If code execution is available, save the drafts to a temp file and run `python3 ../../scripts/voice_check.py <file>`; fix every hit. Confirm every number appears in the user's resume.

## Output

```
**A · <angle>** (<n> chars)
<note>

**B · <angle>** (<n> chars)
<note>

**C · <angle>** (<n> chars)
<note>
```

Then one line: what to send once they accept (pointer to `linkedin-message`, "after-accept" pattern).

## Save it

Write the result to `applications/<Company>/connection-note-<role>.txt` (`general` as the role when there is none) under the output root, as plain text with bare URLs and no Markdown, following the "Messages are plain text" rules in `../../references/output-files.md`: each note in full with its character count. Then show it in chat as usual and give the path in one line only if it is the first file you save this session; later saves in the same session do not repeat it (see `../../references/output-files.md`).

## Rules

- No asks for jobs or referrals in the note itself, except to a recruiter where a direct "open to chat about <role>?" is normal.
- No "I'd like to add you to my professional network".
- No emojis unless the user's field and tone clearly use them.
- If there is no hook, say so and give the best generic-but-honest version, labelled.
