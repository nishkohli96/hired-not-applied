---
name: outreach-kit
description: One-shot networking pack for a specific job - takes the user's resume, a job description and a contact's name, works out whether the contact is HR/recruiter, hiring manager or an internal employee, and writes every message needed to land an interview or a referral - LinkedIn connection note, DM/InMail, cold email to their work address, referral ask with forwardable blurb, and a dated follow-up sequence - in an assertive, polite, metrics-backed voice. Use when the user pastes a resume and a JD and names a person, or says "write outreach to X for this job", "help me reach the hiring manager / HR / someone at X", "get me a referral at X", "networking messages for this role", or "connect with X about this job".
---

# Outreach kit: resume + JD + contact → full message pack

This is the main entry point of the networking plugin. Produce everything the user needs to contact one person about one job, ready to paste.

## Inputs (usually all in the first message)

- **Resume**: load it first per `../../references/resume-source.md`; with shell access run `bash <skill base dir>/../../scripts/find-resume.sh` (absolute path; the shell's cwd is the user's project) and read the printed path (order: pasted in chat → `$HIRED_NOT_APPLIED_RESUME` → `./resume.md` → `~/.hired-not-applied/resume.md`). If none is found, run `resume-setup` first; don't proceed on guesses.
- **JD** (pasted text, file or URL). If missing, ask for the role link or title; a speculative pack is possible but weaker.
- **Contact**: name, ideally with company, title or LinkedIn URL. Several contacts → produce one pack per contact, varying hooks and proof points so no two messages are identical.
- Optional: their work email, how the user knows them, the user's channel preference.

Do not ask for anything else up front. Work with what's given and list assumptions at the end.

## Step 1: Build the proof bank

Follow `../../references/sender-profile.md`: extract the proof bank, headline identity, leader line and 2–3 credibility lines from the resume.

## Step 2: Decode the job (light)

From the JD pull: company, role title, job ID/link, top 3 must-haves, team/product, location/work mode, and 1–2 likely pain points behind the hire. If the job-decode plugin is installed, its `decode-jd` steps can be used, but keep this to a few lines. Map each must-have to the best proof point.

## Step 3: Identify the contact

1. If the user gave a title, use it.
2. Otherwise search the web for `"{Name}" "{Company}"` (LinkedIn, company site, talks, articles) to find their current title and one recent public, professional item to use as a hook. Use only public professional information.
3. Classify:
   - **HR / recruiter / talent acquisition** → goal: get shortlisted for an interview.
   - **Hiring manager** (manager/lead/head of the team in the JD, or one level above the role) → goal: a conversation that leads to an interview.
   - **Internal employee** (peer or anyone else at the company) → goal: a referral.
   - **Senior leader** (director+, founder) → goal: a pointer to the hiring manager or an intro.
4. If the search finds nothing or the name matches several people, state the assumption ("Treating {Name} as the hiring manager; tell me if they're HR or a peer") and write the pack for the most likely persona. Do not stall on this.

## Step 4: Write the pack

Read `../../references/voice.md` and `../../references/outreach-principles.md` first. Use the template files of the sibling skills as starting points, never verbatim:
- `../connection-note/references/patterns.md`
- `../linkedin-message/references/templates.md`
- `../cold-email/references/templates.md`
- `../referral-request/references/templates.md`
- `../follow-up/references/sequences.md`

Produce, in this order:

1. **Connection note** (≤200 characters, show the count). Two variants.
2. **LinkedIn message**: the DM to send once they accept, plus an InMail version with subject (for when they don't accept within ~5 days or the user has Premium).
3. **Cold email** to their work address: subject + body, 120–200 words, written to be engaging (see voice.md "Engaging longer emails"). Skip if the user says LinkedIn only. If no email is known, include the pattern note from `find-contacts` and mark it unverified.
4. **Persona-specific piece**:
   - Recruiter/HR → a 3-bullet "fit at a glance" block they can paste into the ATS or forward.
   - Hiring manager → one concrete idea or observation about their team's challenge (1–2 lines) the user can use in the email or the call.
   - Internal employee → the referral ask (direct version, since the user wants referrals from people they may not know) plus a forwardable third-person blurb ≤80 words.
   - Senior leader → a short version asking for the right person.
5. **Follow-up sequence**: 3 touches using the exact day offsets in `../follow-up/references/sequences.md` (day 3–4, day 8–10, day 15–21 after the first send), converted to real dates in business days of the recipient's region, each adding something new. Include the post-reply message (when they say yes: propose times; when HR asks for details: the reply).
6. **Send plan**: one line per message with channel and suggested date/time in the recipient's time zone, following the "Mixing channels" cadence in `outreach-principles.md` (one touch per day max; stop all channels once they reply). Flag if the dates fall in the recipient's busy period or holiday season, and name the trigger event that justifies writing now.

## Step 5: Check before showing

- Run the self-check in voice.md. If code execution is available, write all drafts to a temp file and run `python3 ../../scripts/voice_check.py <file>`; fix every hit.
- Confirm every number appears in the resume. Confirm the connection note character counts.
- Ensure no two messages in the pack open with the same line or reuse the same proof point first.

## Output format

Reply in chat, paste-ready, with short headers:

```
## Outreach kit: {Contact name}, {title} at {Company} → {Role}
Persona: {HR | Hiring manager | Internal employee | Leader} · Goal: {interview | referral | intro}
Proof used: P1, P3, P5

### 1. Connection note (A / B)
### 2. LinkedIn DM after accept + InMail
### 3. Cold email
### 4. {Fit at a glance | Team idea | Referral ask + blurb | Leader note}
### 5. Follow-ups (dated)
### 6. Send plan

Assumptions: ...  ·  Missing numbers you could add: ...
```

Then offer, in one line, to log the contact with `outreach-tracker` or set follow-up reminders.

## Save it

Write the result to `applications/<company>-<role>/outreach-kit.md` under the output root, following `../../references/output-files.md`: the full pack, every message in full. Then show it in chat as usual and end with one line giving the path.

## Rules

- After reading the JD, update the `observed:` block in `resume.md` (titles, locations, work modes, `last_jd`) per `../../references/resume-source.md`. Do it silently; never edit the user's own `targets:` without asking.
- Never invent experience, numbers, mutual connections, prior conversations or referrals.
- Drafts only. Send through a connected email/LinkedIn tool only when the user explicitly asks.
- Public professional information only when researching the contact.
