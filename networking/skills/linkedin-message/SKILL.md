---
name: linkedin-message
description: Writes LinkedIn InMails and direct messages for job seekers in any field - InMail to recruiters or hiring managers, the first DM after a connection is accepted, informational-interview requests, and replies to recruiters. Use when the user says "write an InMail", "LinkedIn message to the hiring manager", "they accepted my request, what now", "message a recruiter on LinkedIn", "reply to this recruiter", or "ask for an informational chat on LinkedIn".
---

# LinkedIn InMail and DMs

Write LinkedIn messages that get a reply.

## Inputs

- Recipient details and hook (profile, recent activity, shared background).
- Message type: InMail (not connected), after-accept DM, informational request, reply to a recruiter, re-engaging an old contact.
- Target role / job link, if any.
- Sender profile and proof bank (`../../references/sender-profile.md`).
- For replies: the recruiter's message pasted in full.

## Process

1. Read `../../references/voice.md` and `../../references/outreach-principles.md`.
2. Choose the template from `references/templates.md` for the message type and recipient.
3. Draft **2 variants** with different strategies (e.g. "direct ask about the role" vs "advice-first"). Name the strategy for each.
4. Structure every message:
   - Line 1: about them (hook).
   - Line 2: who the user is (credibility line).
   - Line 3: why this role/team, tied to the hook.
   - Line 4: one small ask with an easy out ("or point me to the right person").
5. InMail: add a subject line (≤8 words, specific, no clickbait). Body 60–120 words, hard cap 1,900 characters.
6. DM after accept: 40–100 words; thank them for connecting in a few words, not a paragraph.
7. Recruiter replies: answer their questions first, then the qualifying facts (role fit, availability, location/work mode, comp approach if asked), then propose times.

## Before showing drafts

Run the voice self-check (`../../references/voice.md`). If code execution is available, save the drafts to a temp file and run `python3 ../../scripts/voice_check.py <file>`; fix every hit. Confirm every number appears in the user's resume.

## Output

Show each variant with its strategy label, subject (InMail only) and word count. Add one line on when to follow up (`follow-up` skill).

## Save it

Write the result to `applications/<Company>/linkedin-message-<role>.txt` under the output root, as plain text with bare URLs and no Markdown, following the "Messages are plain text" rules in `../../references/output-files.md`: each InMail or DM in full, one variant block each. Then show it in chat as usual and end with one line giving the path.

## Rules

- No full resume paste; one link to LinkedIn/portfolio is enough.
- Never claim a referral, mutual friend or past meeting that did not happen.
- Salary: never volunteer a number unless the user tells you to; use "open to discussing based on scope" or the user's stated range.
