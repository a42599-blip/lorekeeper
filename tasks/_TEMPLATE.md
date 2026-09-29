# tasks/_TEMPLATE.md — skeleton for a new task pack

Copy this file to `tasks/<task-type>.md` and fill it in.
A pack is written **after** doing the task once — it records what actually worked.

---

# <task type> pack

**When to use:** <keywords the owner says / situations>
**Output:** <what "done" looks like>
**Typical duration:** <rough>

---

## 1. Decide the route first

Most task types have more than one valid approach. Name them, and give a rule for choosing.

| Route | Use when | Watch out for |
|:---|:---|:---|
| A — | | |
| B — | | |

**Do not** pick a route silently. State which one and why.

---

## 2. Pipeline (the ordered steps)

```
1. <step>            → check: <how you verify>
2. <step>            → check:
3. <step>            → check:
4. <step>            → check:
5. <step>            → check:
```

Each step must have a **check**. A step without a check is a step that will silently fail.

---

## 3. Fixed rules for this task type (learned the hard way)

- <rule>
- <rule>

Keep these short, concrete and testable. "Be careful with audio" is useless;
"generate audio segment by segment and measure each one's duration before laying out the timeline" is a rule.

---

## 4. Self-check before delivering

```
[ ] every step in the pipeline was verified
[ ] output matches what was asked (not what was easy)
[ ] nothing invented / unchecked
[ ] leftovers and unknowns listed for the owner
```

---

## 5. Known traps

| Trap | Symptom | Fix |
|:---|:---|:---|
| | | |

---

## 6. Tools for this task type

| Capability | Tool | Vetting |
|:---|:---|:---|
| | | 🟢 / 🟡 / 🔴 |

(Update as tools change. Record in `skills.md` too.)
