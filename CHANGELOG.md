# Changelog

All notable changes to hired-not-applied. The marketplace version is the number in `.claude-plugin/marketplace.json`; each entry lists the plugin versions it shipped. Format follows [Keep a Changelog](https://keepachangelog.com).

## [0.23.0] - 2026-11-13
job-radar 0.3.2 · job-decode 0.14.2 · networking 0.13.0

### Changed
- **Messages are saved as plain `.txt`, not Markdown.** Cold emails, connection notes, InMails and DMs, referral asks, follow-ups and outreach packs have no `#`, `**` or `[text](url)` to clean up before pasting into Gmail or LinkedIn. Links are bare URLs so they turn clickable on paste. Reports, briefs and decodes stay Markdown.
- Each variant is one block in the file, separated by a rule line, with the word or character count in the rule line so nothing but the message sits inside it. A cold email's `Subject:` is the first line of its block.

## [0.22.1] - 2026-11-13
job-radar 0.3.1 · job-decode 0.14.1 · networking 0.12.1

### Fixed
- **Years of experience** is now the figure stated in your resume's summary or headline, copied as written. `tailor-resume` used to add it up from job dates, which was wrong whenever early roles were condensed or overlapped. The rule lives in the shared resume rules, so every skill follows it. With no stated figure, skills leave years out instead of guessing.
- **Application folders** are named for the company alone: `applications/companyName/`, not `applications/companyName-sde3-fullstack/`. The role moved into the file names (`cold-email-sde3-fullstack.md`) so two roles at one company don't collide.
- **Tailored resume filename** is `<Name>_<Title>_<Company>.<ext>` with no `_Resume` suffix, e.g. `Rahul_Kumar_Senior_Software_Engineer_Company.pdf`.

### Changed
- One `assets/logo.svg` replaces the light and dark pair. It stays readable on white and on GitHub dark, so the README no longer needs a `<picture>` switch. "hired," is green to match the check in the icon.
