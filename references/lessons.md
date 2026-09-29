# lessons.md — the lesson ledger

Purpose: the same mistake should never be paid for twice — and someone else's mistake
should not be paid for at all.

Location: `<memory folder>/lessons.md` (default `~/.lorekeeper/lessons.md`)

---

## Entry format

```markdown
## <short title>
- Date:
- Tags: (e.g. video, deployment, api, rendering)
- Source: own experience | someone else's (link)
- Symptom: what was observed
- What we assumed (wrong): the first convenient explanation
- Real cause: verified root cause, with the evidence
- Fix that worked: the actual action
- Confidence: confirmed | likely
- Do not: what to avoid next time
```

Keep it under ~15 lines per entry. Short entries get re-read; essays do not.

---

## Rules

1. **Search before diagnosing.** When a symptom appears, grep this file first. If it happened before,
   you already know the real cause.
2. **Verify before writing "real cause".** If it is not confirmed, write `assumed` and mark confidence.
3. **Two kinds of lessons, both welcome:**
   - own experience (paid for with time)
   - someone else's experience (found in an issue, a forum post, a changelog)
4. **Negative lessons count.** "Tried X, it fails because Y — do not retry" saves the most time.
5. **Resolve contradictions.** If a new lesson contradicts an old one, update the old entry
   instead of leaving both.
6. **Prune.** Once a lesson is absorbed into a task pack (as a permanent rule), you may collapse it here.
   Nothing is deleted without the owner's knowledge.

---

## Why this file changes behaviour

Example pattern this file is designed to catch:

```markdown
## Platform downloader "blocked IP" myth
- Date: <date>
- Tags: downloader, network
- Source: own experience
- Symptom: one platform fails while all others work
- What we assumed (wrong): the server IP was blocked → recommended buying a proxy
- Real cause: the server was missing a helper library used by the platform's player
- Fix that worked: install the missing library; no proxy, no extra cost
- Confidence: confirmed
- Do not: never recommend a paid network fix before checking missing components
```

Without this entry, the next session recommends the proxy again.
With it, the next session starts from the real cause.
