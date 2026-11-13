# Resume source (shared by every skill in hired-not-applied)

<!-- Synced from /shared by scripts/sync-shared.sh. Edit the copy in /shared, not in a plugin. -->

Every skill works from the user's resume. Users keep it in **one Markdown file**, so they set it up once and every skill in both plugins reuses it. Markdown is used instead of PDF because it costs a fraction of the tokens to read and is easy to edit.

## Where to look (stop at the first hit)

**Do this before anything else in any skill.** If you can run shell commands, run the finder script first; it checks locations 2–4 below and prints the path of the file to read:

```bash
bash "<this plugin's root>/scripts/find-resume.sh"
```

Build the absolute path from the skill's base directory shown when the skill loads (plugin root = two levels up from the skill folder), because the shell's working directory is the user's project, not the plugin. Run it from the user's project directory so `./resume.md` is found. Read the printed file. Exit code 1 means no saved file. Without shell access, try reading locations 3–5 directly.

1. **This conversation.** A resume pasted or attached in the current chat overrides the file for this session only. Say so in one line ("Using the resume you pasted, not your saved resume.md").
2. **Custom path.** If code execution is available, check the environment variable `HIRED_NOT_APPLIED_RESUME` (`echo "$HIRED_NOT_APPLIED_RESUME"`). If set, read that file.
3. **Project file.** `resume.md` in the current working directory, then `./career/resume.md`.
4. **Global file.** `~/.hired-not-applied/resume.md` (survives plugin updates; recommended location).
5. **Connected folder / project knowledge** (Claude app): a file named `resume.md` in a connected folder or in the project's files.

If none is found: tell the user in one line that no saved resume was found, then run the `resume-setup` skill (it asks them to paste or attach their resume and saves it). If the user just wants a one-off answer, proceed with what they pasted and offer setup afterwards.

## How to read it

- Read the file once per session and reuse it; don't re-read for every skill.
- The YAML frontmatter holds targets and logistics (target roles, locations, availability, links, work authorization). Use those values instead of asking.
- The `## Value statements` section, when present (from `value-statement`), is the user's chosen positioning. Keep summaries, headlines and outreach consistent with it.
- The `## Proof bank` section, when present, is the pre-extracted list of metrics, leadership and brand facts. Use it directly instead of re-deriving from the body. If it's missing or older than the body (compare `updated:`), rebuild it in memory and offer to save it back.
- Treat everything in the file as the user's own statements. Never add facts that aren't there.
- **Years of experience is the user's own figure.** Use the number written in the `## Summary` or `headline` exactly as written (`7+ years`, `7.5 years`), in every skill and every output. Never recompute it by adding up job dates: experiences are often condensed, overlapped, or start before the first listed role, so a sum is wrong more often than right. If the file states no figure, leave years out rather than inventing one, and offer once to add it to `resume.md`.

## Learn from the JDs the user pastes

Every skill that receives a job description updates the `observed:` block in the frontmatter afterwards. It is a record of the market the user is actually looking at, and `hiring-radar`, `remote-radar`, `recruiter-positioning` and `tailor-resume` read it to stay aligned with that market rather than with a preference the user set months ago.

After reading a JD, update `observed:` in `resume.md`:

- **`titles`**: the role title as the employer writes it, normalised to its common form (`Sr. Software Engineer III` → `Senior Software Engineer`; `Forward Deployed Engineer` stays as it is). Increment the count if it's there, add it at 1 if not, and keep the list ordered by count, longest list 12 entries.
- **`locations`**: the city or region in the posting, with `Remote` as its own entry when the posting is remote. Same counting.
- **`work_modes`**: `remote`, `hybrid` or `onsite`, only when the JD states it. Same counting.
- **`last_jd`**: today's date.

Write this silently, in the same turn, without announcing it or asking. It records what was in the posting; it is not a claim about what the user wants.

### Never overwrite what the user chose

`targets.roles`, `targets.locations`, `targets.work_mode`, `targets.exclude` and `availability` are the user's own statements. Observed data never edits them. Instead, raise a pattern once, at the end of a reply, in one line, and only when it is worth acting on:

- A title appears **3 or more times** and isn't in `targets.roles`: offer to add it, because recruiters search by title and the user's list may be missing the one the market uses. ("Three of the roles you've looked at are titled Forward Deployed Engineer. Add it to your target roles?")
- Observed locations or work modes **contradict** the stated targets, for instance repeated onsite postings in a city listed under `exclude`: say what you're seeing and ask whether the preference has changed. Never assume it has.
- Stay quiet otherwise. One nudge per session at most, and don't repeat a suggestion the user has already declined.

If `observed:` is missing from an older `resume.md`, add the block the first time you write to it.

## Keeping it fresh

- If the user mentions a new job, result, certification or changed preference during a session, offer once at the end to update `resume.md` (and bump `updated:`).
- Never write ID numbers, salary history, health or family details into the file unless the user explicitly asks.
