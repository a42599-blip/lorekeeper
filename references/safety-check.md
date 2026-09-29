# safety-check.md — vetting third-party skills before installing

Purpose: a skill is code someone else wrote, running with your assistant's access.
Treat it like an app you are about to install on a computer that holds your private life.

---

## Check list

| # | Question | Red flag |
|:-:|:---|:---|
| 1 | Is it instructions only, or does it run scripts? | Scripts you cannot read |
| 2 | Does it reach the network? | Sends data outward, unknown endpoints |
| 3 | Does it read private locations? | passwords, browser profiles, keychains, `.ssh`, entire drives |
| 4 | Does it modify system settings? | installs daemons, changes PATH, edits hosts |
| 5 | Who wrote it? | anonymous, no history |
| 6 | Is it maintained? | no updates for years, unanswered issues |
| 7 | Does anyone report problems? | reports of weird behaviour, data leaks, spam |
| 8 | Does it ask for more access than it needs? | a "formatting" skill wanting file-system access |
| 9 | Is the licence clear? | no licence at all |
| 10 | Is the source readable? | obfuscated, minified, encoded blobs |

---

## Verdict

| Light | Condition | Action |
|:---:|:---|:---|
| 🟢 | Instructions only, no network, no private access, maintained, readable | may install (log it) |
| 🟡 | Runs scripts, or reaches network, or origin unclear — nothing malicious found | **ask the owner first**, attach the report |
| 🔴 | Reads private data, obfuscated code, unknown endpoints, bad reputation | do not install; tell the owner why |

---

## Honest limitation

This check cannot catch a brand-new, well-hidden attack. That is exactly why
**"ask before installing" is not optional** — the human gate is the real defence.

Additional precautions when the owner approves a 🟡:

1. Install into a single project first, not globally, when the tool allows it.
2. Read the script before running it — at least the first 50 lines and anything that touches the network or the file system.
3. Keep a copy of the old state so it can be undone.
4. Note in `skills.md` what it can access, so a future session can reassess.

---

## Report format to show the owner

```markdown
### <skill name>
- What it does:
- Instructions only, or scripts? 
- Network access: yes/no — to where
- Private data access: yes/no — which
- Maintainer & freshness:
- Licence:
- Verdict: 🟢 / 🟡 / 🔴
- What I could NOT verify:
- Recommendation:
```
