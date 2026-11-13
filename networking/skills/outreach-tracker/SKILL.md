---
name: outreach-tracker
description: Tracks job-search networking outreach - logs who was contacted, on which channel, when, and the reply status, then lists who is due a follow-up today and suggests the next message. Use when the user says "log this outreach", "track my networking", "who do I need to follow up with", "outreach tracker", "update status for X", or "what's due today".
---

# Outreach tracker

Keep one tracker of contacts and tell the user who needs a touch next.

## Where the tracker lives

Use the first that applies:
1. A tracker the user already has (spreadsheet, CSV, Notion/Airtable via a connector) - read and update it in place.
2. A spreadsheet/table artifact type if the session offers one.
3. Otherwise `outreach/tracker.csv` under the output root, per `../../references/output-files.md`.

Ask once if it's ambiguous, then reuse the same tracker every time.

## Columns

`Company | Role / Job ID | Contact name | Title | Persona (HM/Recruiter/Peer/Alumni/Leader) | Channel (Note/InMail/DM/Email) | Email (verified? Y/N) | Hook used | Variant (subject/opener tested) | Touch # | Last sent (YYYY-MM-DD) | Next due (YYYY-MM-DD) | Status | Notes`

Status values: `Drafted`, `Sent`, `Accepted`, `Replied`, `Call booked`, `Referred`, `Applied`, `Interviewing`, `Offer`, `Closed - no reply`, `Closed - not now`, `Declined`.

## Actions

- **Log**: add or update a row from what the user says or a message just drafted. Compute `Next due` from the follow-up schedule in `../../references/outreach-principles.md` (day 3–4, 7–10, 14–21; stop after 3 touches).
- **Due today**: list rows where `Next due` ≤ today and status is `Sent` or `Accepted`, oldest first, with a one-line suggested next touch and an offer to draft it via `follow-up`.
- **Weekly summary**: counts by status, reply rate by channel and persona, which hooks earned replies, and reply rate by variant (subject line or opener type) once each variant has 5+ sends. Suggest one change (e.g. "emails to hiring managers get 3× the reply rate of recruiter InMails; shift effort there").
- **Close out**: after touch 3 with no reply, set `Closed - no reply`. If anyone asked not to be contacted, set `Declined` and never schedule them again.

## Rules

- Use today's date from the system, the user's time zone.
- Don't store sensitive personal data about contacts beyond professional details.
- If a scheduling/reminder tool is available and the user asks, set reminders for due follow-ups.
