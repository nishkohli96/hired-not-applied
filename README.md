<p align="center">
  <img src="./assets/logo.svg" alt="hired, not applied" width="520">
</p>

# hired-not-applied

**Stop sending applications into the void. Get hired through people.**

Three Claude plugins for job seekers in any field, at any level, in any region. **job-radar** finds where to apply before the jobs are advertised; **job-decode** turns one job description into a fit score, a tailored resume and the interview questions with answers; **networking** reaches the HR, hiring managers and employees who can get you an interview or a referral. Every skill works from your own resume, never invents experience, and writes drafts you send yourself.

## Why these plugins

Hiring has changed. By most estimates, around **80% of jobs are never publicly advertised**: they're filled through internal moves and promotions, employee referrals and people the hiring team already knows. Many roles reach company career pages and LinkedIn only at the end, if at all, and by then the shortlist often already exists. That's why hitting "Apply" so often leads nowhere.

So instead of competing in the same applicant pile, these plugins work the way hiring actually happens, in two moves.

**Get there before the posting.** A company that just raised a round, hired a VP, opened a market or shipped a product is about to hire, and says so in public weeks before any job appears. `job-radar` reads those dated signals and ranks the companies most likely to hire you now, so you're early instead of 400th in a queue.

**Go to a person, not a form.** `networking` takes you to the people who decide: **hiring managers**, **HR and recruiters**, and **employees inside the company** who can refer you. A referral or a direct conversation gets you seen earlier, puts your resume in front of a person rather than a filter, and gives you a real chance at an interview and an offer.

When a job is posted and worth your time, `job-decode` makes sure the application itself is sharp.

## Setup

### 1. Install

Install one, two or all three; each plugin works on its own, and each includes `resume-setup` so it can stand alone.

**Claude Code — one folder only (recommended)**

A job search is its own project, so keep these plugins in its folder instead of loading them into every session you ever start. Make a folder for the search, then install at local scope:

```bash
claude plugin marketplace add nishkohli96/hired-not-applied

mkdir -p ~/job-hunt && cd ~/job-hunt
claude plugin install job-radar@hired-not-applied --scope local
claude plugin install job-decode@hired-not-applied --scope local
claude plugin install networking@hired-not-applied --scope local
```

`--scope local` enables the plugins for you in that one folder. It writes `~/job-hunt/.claude/settings.local.json`, which Claude Code keeps out of git. Start Claude anywhere else and the skills aren't loaded, so they cost you no context in your other projects. Run `claude plugin list` to see the scope of each one.

Keep your resume and your tailored output in the same folder: a `resume.md` there is found before the one in your home directory, which is handy if you want a separate resume per search.

The marketplace itself is registered for your whole machine, so the plugins appear in the **Discover** tab of `/plugin` everywhere. They are only *enabled* in the folder you installed them in.

**Claude Code — everywhere on this machine**

Drop `--scope local` to enable them in every project:

```bash
claude plugin marketplace add nishkohli96/hired-not-applied
claude plugin install job-radar@hired-not-applied
```

**Claude Code — from a clone, without installing**

Clone the repo and load the plugin folders for one session. Nothing is written to your settings, and edits are picked up the next time you start:

```bash
git clone https://github.com/nishkohli96/hired-not-applied.git
cd hired-not-applied
claude --plugin-dir ./job-radar --plugin-dir ./job-decode --plugin-dir ./networking
```

Use this if you want to change the skills to suit yourself.

**Claude app (desktop / web):** add this GitHub repo as a plugin marketplace, or zip the contents of `job-radar/`, `job-decode/` or `networking/` as `<name>.plugin` and upload it. The app has no per-folder scope; plugins you add there are on for your account.

### 2. Add your resume once

Every skill reads one Markdown resume, so you never paste it again (Markdown also costs far fewer tokens than a PDF).

- **Easiest:** say *"set up my resume"* and paste or attach your resume (PDF, DOCX or text). Claude converts it, pulls out your key metrics, asks for target roles and availability, and saves `~/.hired-not-applied/resume.md`.
- **By hand:** copy [`resume.template.md`](./resume.template.md) to `~/.hired-not-applied/resume.md` and fill it in.

> **Review your `resume.md` before using the other skills.** It is generated from your resume, so check the metrics, dates, job titles and target roles, and fix anything that's wrong or missing. Every skill trusts this file, so a mistake here shows up in every message and document.

As you paste job descriptions, the file's `observed:` block records the titles, locations and work modes those postings use, so the radar and your positioning follow the market's words rather than a list you wrote months ago. Your own `targets:` are never changed without asking; a pattern worth acting on is raised as a question.

Skills look for it in this order: a resume pasted in the current chat → `$HIRED_NOT_APPLIED_RESUME` → `./resume.md` (or `./career/resume.md`) in your project → `~/.hired-not-applied/resume.md` → a `resume.md` in a connected folder or project files.

### 3. Where your drafts are saved

Everything a skill produces is written to a file in the folder you run Claude from, as well as shown in chat:

```
applications/CompanyName/        decode-jd-sde3-backend.md, cold-email-sde3-backend.txt, the tailored resume…
people/                          per-contact prep
research/                        company, market and industry briefs
outreach/                        your outreach log
profile/                         positioning that isn't tied to one job
```

One file per skill per job, with every variant inside it, so three cold-email options sit side by side in one file instead of three. Messages (cold emails, connection notes, InMails, referral asks, follow-ups) are saved as plain `.txt` with bare URLs, so you can copy and paste straight into Gmail or LinkedIn; reports and briefs are Markdown. Set `HIRED_NOT_APPLIED_OUTPUT` to put them somewhere else; without a writable folder, you get the output in chat and as a download.

### 4. Just ask

Talk normally: *"Which companies should I target?"*, *"Decode this JD"*, *"Write outreach to Priya Kapoor at Acme for this role"*. The right skill picks itself up.

## Skills

A job search runs in that order: **job-radar** finds the targets, **job-decode** prepares the application, **networking** gets you in front of a person.

### job-radar: find where to apply

| Skill | What it does |
|---|---|
| `resume-setup` | Saves your resume as `resume.md` with a bank of your metrics; every skill reuses it |
| `hiring-radar` | Ranks 15–20 companies most likely to hire you now, from dated hiring signals |
| `remote-radar` | Remote employers that can actually hire you from your country, scored and tiered |
| `hiring-deep-dive` | One company in depth: signals, hiring probability and timeline, roles likely to open, who to target |
| `company-intel` | One-page employer brief before applying or interviewing |
| `industry-briefing` | Weekly briefing on your industry with hiring implications and talking points |
| `market-value` | Compensation benchmark for a role: company, competitors, market percentiles |

### job-decode: turn one job description into an application

| Skill | What it does |
|---|---|
| `resume-setup` | Same as above (included so each plugin works alone) |
| `decode-jd` | Reads a job description from the hiring manager's side: priorities, worries, skills, likely interview questions |
| `fit-check` | Scores your match out of 100 with gaps and an apply / network first / skip call |
| `resume-alignment` | Checks your resume against a job without rewriting it: matches, gaps, keywords to consider |
| `tailor-resume` | Creates a tailored copy of your resume in the right regional format |
| `video-cover-letter` | 2–3 minute spoken script plus delivery tips |
| `interview-answers` | Paste a JD, get the likely questions with a model answer under each, in your voice |
| `interview-prep` | Built around one interview: story bank, tough questions, questions to ask, mock interview |

### networking: reach people and get replies

| Skill | What it does |
|---|---|
| `resume-setup` | Same as above (included so each plugin works alone) |
| `value-statement` | Finds the value you keep creating; writes one-sentence, executive, recruiter and LinkedIn statements |
| `recruiter-positioning` | Makes you easy for recruiters to place: intro, headline, search keywords, call strategy |
| `outreach-kit` | **Start here.** Resume + JD + a contact's name → connection note, LinkedIn message, cold email, referral ask, dated follow-ups |
| `find-contacts` | Who to reach at a company and how to find them |
| `connection-note` | LinkedIn invite notes within the character limit |
| `linkedin-message` | InMails, after-accept messages, recruiter replies |
| `cold-email` | Work-email outreach to hiring managers, recruiters, founders |
| `referral-request` | Referral ask plus a summary the referrer can paste |
| `follow-up` | Follow-ups and full sequences, interview thank-yous, rejection replies |
| `coffee-chat-prep` | Full prep for a networking conversation: context, questions, your intro, follow-up plan |
| `common-ground` | Quick check of what you share with someone |
| `hiring-manager-brief` | How a specific hiring manager likely thinks, and how to position yourself |
| `recommendation-strategy` | Who to ask for LinkedIn recommendations and how |
| `outreach-tracker` | Logs your outreach and tells you who to follow up with today |

Every message `networking` writes follows a shared voice guide (assertive, polite, specific, no AI clichés) and can be checked with `networking/scripts/voice_check.py`.

## Contributing

Each skill is `skills/<name>/SKILL.md`, with longer material in `references/`. Plugins are `job-radar/`, `job-decode/` and `networking/`. Files used by all three plugins live in `shared/`; after editing them run `bash scripts/sync-shared.sh`. Bump `version` in the plugin's `plugin.json` and in `.claude-plugin/marketplace.json`, and add an entry to [CHANGELOG.md](./CHANGELOG.md). Licensed under [MIT](./LICENSE).
