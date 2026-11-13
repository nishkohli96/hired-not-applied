# Voice: assertive, polite, human

Every networking message is written in this voice unless the user asks for a different one. Read it before drafting and check every draft against it before showing it.

## The voice in one line

A capable professional who has done the work, says so plainly with numbers, respects the reader's time, and asks for what they want without grovelling or pushing.

## Assertive (confidence comes from evidence)

- State results as facts, with numbers from the proof bank (`sender-profile.md`): "I led a team of 6 that shipped X to 2M users", not "I was fortunate to be part of".
- Show ownership with active verbs: led, built, ran, cut, grew, shipped, turned around, hired, set up.
- When the sender has leadership evidence (led people, owned delivery, mentored, made the call, ran a launch, cleaned up a mess), lead with it. "Leads from the front" means: was hands-on AND made others better. Pair one hands-on result with one people/ownership result where possible.
- State the ask directly. Say what you want and why it makes sense for them.
- No hedging stacks: drop "just", "maybe", "I think", "if possible", "sorry to bother", "I know you're busy", "I was wondering if".
- No self-deprecation, no begging, no over-thanking (one "thanks" per message, max).

## Polite (respect without servility)

- Give the reader an easy out once, briefly: "If you're not the right person, a nudge in the right direction would help."
- Offer flexibility on their terms: "whenever suits you this week or next".
- Ask, don't demand. Asks are framed as questions or as a clear offer, never as a command.

### Asking for a call: do / don't

| Don't (blunt or pushy) | Don't (weak) | Do |
|---|---|---|
| "Open to a 15-minute call?" | "Would it be possible to maybe have a quick chat if you have time?" | "Would you have 15 minutes sometime next week? I'd like to hear where the team is headed and share how I've handled similar work." |
| "Let's talk." | "Sorry to bother you, but…" | "If it's useful, I can walk you through how we did it at {Company}. Happy to work around your calendar." |
| "Call me." | "No pressure at all, totally fine if not!!" | "Could we find 15 minutes in the next couple of weeks? If someone else owns this hire, I'd be grateful for a pointer." |

## Human, not AI

Write like a person typing to another person. Vary sentence length. Use contractions (I'm, I've, you're). Plain words. One idea per sentence.

### Banned phrases (rewrite if any appear)

Openers and closers:
- "I hope this message/email finds you well", "Hope you're doing well", "I trust you are well"
- "I am reaching out", "I'm reaching out to", "I wanted to reach out", "I am writing to express"
- "I came across your profile", "I stumbled upon"
- "I look forward to hearing from you" (as a final line; prefer a concrete next step)
- "Thank you for your time and consideration"
- "Please let me know if you have any questions"
- "Quick question", "Just checking in", "Just following up", "Bumping this", "Circling back", "Touching base"

AI-typical vocabulary:
- delve, leverage (as a verb), synergy, robust, seamless, cutting-edge, game-changer, passionate, thrilled, excited to, resonate(s), align(s) with my values, testament, tapestry, landscape, realm, navigate (figurative), foster, spearhead (overused), dynamic, innovative, journey, unlock, elevate, empower, holistic, myriad, plethora, pivotal, invaluable, keen interest, deeply, truly, genuinely, incredibly

AI-typical structures:
- "It's not just X, it's Y" / "not only X but also Y"
- Three-item lists in every sentence ("fast, reliable, and scalable")
- Rhetorical question openers ("Ever wondered…?")
- Em dashes (—). Use a comma, full stop or brackets instead.
- Exclamation marks (zero in cold messages; one max in warm ones).
- Colon-led reveals ("Here's the thing:")
- Ending with a summary of what was just said.
- Emojis in professional cold outreach.

## Engaging longer emails (cold emails, InMails, thank-you notes)

Short messages (notes, DMs, follow-ups) stay short. Longer ones (120–200 words) should read like a person with a point of view, not a form letter:

1. **Open on them, specifically.** Pick one opener type and make it specific: (a) shared ground (a company, client, school or community you both know), (b) a precise observation about their work (what's notable and why, not praise), (c) a question that makes them think about their own problem, (d) a useful tip, link or data point for them. Then: A concrete detail from their work, product, post or news, plus a reaction that shows thought ("Moving checkout to the edge is bold at your traffic. We did something similar at X and the hard part wasn't latency, it was cache invalidation.").
2. **One short story beat.** A two-sentence moment from the sender's work with stakes and a number: what was broken, what they did, what changed. Concrete nouns beat adjectives.
3. **Bridge to their need.** Why that experience matters for this team now.
4. **The ask, with a reason.** What you want, what they get from the conversation.
5. **Sign-off that sounds like a person.** "Thanks, {Name}" or "Cheers, {Name}" (casual industries) or "Regards, {Name}" (formal regions). Not "Best regards" + three lines of pleasantries.

Specificity is what makes it engaging. If a line could be sent to any company unchanged, cut or rewrite it.

## Self-check before showing drafts

1. Any banned phrase or structure? Rewrite.
2. Every claim backed by the proof bank? No invented numbers.
3. One ask, phrased as a respectful question or offer?
4. Would a busy manager reading on a phone get the point in 10 seconds?
5. Read it aloud. Does it sound like a confident colleague, or a template? Fix anything that sounds like a template.

If code execution is available, run `python3 <plugin>/scripts/voice_check.py <draft-file>` (path relative to this file: `../scripts/voice_check.py`) and fix every hit before showing the draft.
