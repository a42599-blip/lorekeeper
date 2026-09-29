# skill-eval.md — comparing and choosing tools/skills

Purpose: choose tools by comparison, not by mood. And never install something silently.

---

## Step 1 — name the capability

Write it as a sentence: "I need to produce a narrated 30-second video from screenshots."

Vague wants produce vague tool choices. Be specific before you search.

---

## Step 2 — inventory first

Check `skills.md`. If something already installed covers the need, **use it and stop**.
Adding a second tool that does the same job makes the assistant worse (attention gets spread thin).

---

## Step 3 — search (only if needed)

Sources worth checking, in order:

1. The assistant's own skill directory / marketplace
2. Well-known public skill and plugin collections
3. GitHub search
4. General web search

---

## Step 4 — comparison table (required before recommending)

| Column | What to look at |
|:---|:---|
| Completeness | Does it do the whole job, or only part? |
| Quality / maturity | Is it pleasant to use, or does it break often? |
| Maintenance | Last update? Open issues piling up? (stale = retire) |
| Licence / cost | Free? Can it be used commercially? Any hidden cost? |
| Dependencies | Does it require installing other things? How heavy? |
| Risk | Does it run scripts? Does it touch private data? (see safety-check.md) |
| Fit | Does it match how this owner works? |

Then a one-line verdict: **adopt / adopt later / skip / already covered**.

---

## Step 5 — install policy

| Vetting result | Action |
|:---|:---|
| 🟢 safe, and the owner asked for this capability | may install, then log it |
| 🟡 unclear | ask the owner with the report attached — do not install first |
| 🔴 risky | do not install; explain the risk |

**Search is automatic. Installation never is.**

---

## Step 6 — log the decision

Append to `skills.md`:

```markdown
## <tool name>
- Date adopted:
- Capability:
- Why this one (vs alternatives):
- Vetting: 🟢 / 🟡 / 🔴
- Deprecated? no
- Notes:
```

Revisit the list periodically: mark anything unmaintained as **deprecated** and stop using it.
