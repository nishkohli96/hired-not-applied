---
name: cold-email
description: Writes cold emails to work addresses for job seekers in any field - to hiring managers, recruiters, founders, team leads and alumni - with a specific hook, credibility line, one clear ask and a subject line that gets opened. Use when the user says "write a cold email to X", "email the hiring manager", "cold email for a job at X", "email a founder about working there", "outreach email to a recruiter's work email", or "speculative application email".
---

# Cold email

Write a cold email that earns a reply from someone who doesn't know the user.

## Inputs

- Recipient name, title, company, verified or best-guess work email (see `find-contacts` for patterns; flag if unverified).
- Hook (recent work, news, shared background). If missing, research the recipient and company first (web search; `company-intel` in the job-decode plugin if installed).
- Target role/job link, or "speculative" if no posting.
- Sender profile and proof bank (`../../references/sender-profile.md`) and links (LinkedIn, portfolio, GitHub, publications).

## Process

1. Read `../../references/voice.md` and `../../references/outreach-principles.md`.
2. Pick a template from `references/templates.md` by recipient and situation.
3. Draft **2–3 variants** with different strategies, labelled (e.g. "Problem-solver", "Direct role ask", "Advice-first", "Proof-of-work" with a short relevant idea or mini-audit).
4. Every email:
   - **Subject**: 3–7 words, specific to them (`{Team}'s {project} + a {role} idea`, `{Role} - {credibility hook}`). No "Quick question", no fake "Re:".
   - **Opening**: the hook, one sentence about them.
   - **Bridge**: why the user is relevant - leader line or credibility line from the proof bank, with numbers.
   - **Value**: link the user's experience to a need the team probably has (from JD or company news).
   - **Ask**: one clear, courteous ask with a reason (what they get from the conversation) + a brief easy out. Use the closing asks list in the templates file; never a bare "Open to a call?".
   - **Sign-off**: name, headline identity, 1–2 links. Attach the resume only for recruiters/HR or when the user asks.
   - Length: 80–120 words for direct versions; 120–200 for the engaging story-led version (see voice.md, "Engaging longer emails").
5. Suggest a send time in the recipient's time zone and the follow-up schedule (`follow-up`).

## Before showing drafts

Run the voice self-check (`../../references/voice.md`). If code execution is available, save the drafts to a temp file and run `python3 ../../scripts/voice_check.py <file>`; fix every hit. Confirm every number appears in the user's resume.

## Output

Each variant as a ready-to-paste block with subject, body and word count. If an email connector (e.g. Gmail, Outlook) is connected and the user asks, create **drafts** there; never send without explicit instruction.

## Save it

Write the result to `applications/<Company>/cold-email-<role>.txt` under the output root, as plain text with bare URLs and no Markdown, following the "Messages are plain text" rules in `../../references/output-files.md`: every subject line and body in full, one variant block each. Then show it in chat as usual and end with one line giving the path.

## Rules

- No mass-merge style; each email must read as written for one person.
- Never imply the user was referred or has met the recipient when they haven't.
- Respect opt-outs; if a recipient says no, stop and mark it in the tracker.
- Follow local anti-spam law norms: individual, relevant, honest sender identity.
