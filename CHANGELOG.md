# Changelog

All notable changes to this project are recorded here.
Format: date — change. Versions are loose (this is a document-driven skill).

## [0.7.0] — 2026-09-30

**The competitive part is now visible: how it works, and why it beats the alternative.**

Three new diagrams in `assets/` (generated, not hand-drawn):

| Image | Shows |
|:---|:---|
| `process.png` | **What actually happens when you give it a task** — you ask → main skill (five laws + baseline rules) → classify task → read **that one** task pack → plan → step-by-step with a check per step → self-check the result → round-closing self-check → and the loop that writes the lesson and the pack for next time |
| `compare.png` | **The same task, two different days** — most assistants: generate first, broken text, overlapping narration, “done”, two hours of redoing. lorekeeper: classify → task pack → plan → audio before timeline → laid-out text → self-check → round self-check report → write the pack so the next one is faster. Plus the four “why download it” reasons |
| `selfcheck.png` | **Every round, it cleans up after itself** — the report block (dead code / dead text / stale data / what it caught itself) beside what it actually deletes, and the contrast with assistants that only ever accumulate |

- `README.md`: the *How it works* section now leads with the process diagram, and *What is different* was renamed to **“What is different — and why it is worth downloading”**, leading with the side-by-side comparison.
- Banner updated with a **每輪自我清潔** chip, so the front page states the capability above the fold.
- Promo material (outside this repository): the video gained a frame and a narration line for the round self-check
  (11 frames, 54.4 s Traditional/Simplified, 48.2 s male backup), and the post drafts gained a section of
  ready-to-use “why it is stronger” lines in Traditional Chinese, Simplified Chinese and English.

## [0.6.0] — 2026-09-30

**Every round now ends with a self-check report — the skill sweeps its own work and cleans it up.**

New section in `SKILL.md` (both languages): **The round-closing self-check — never report without it.**

1. Sweep for dead code → zero, every round (not at the end of the project).
2. Sweep for dead text and **stale data** — superseded passages, notes that are no longer true
   (wrong paths, stale versions, lessons that no longer apply), files nothing links to.
3. Say what was found and removed — even when it is “nothing”.
4. Report **what it caught by itself**: a bug noticed while verifying, a wrong assumption, a better method — fixed, then disclosed.
5. List what is still open.

And it must be reported in one short block:

```
Round self-check
- dead code .......... 0   (or: removed <what, where>)
- dead text / stale data 0 (or: removed <what, where>)
- caught myself ..... <bug / wrong assumption / better method> — fixed, verified how
- not done / untested <list>
```

The definition-of-done list requires this block. `README.md` now shows it to human readers (with the
reason it matters), and the Traditional Chinese section of `README.md` plus the promo post drafts
mention it as a selling point.

Background: this is exactly how work was reported on our own projects — *“dead code: 0”*, and
*“this round I found and fixed the following bug myself”* — so it is now part of the public skill
instead of staying a private habit.

## [0.5.0] — 2026-09-30

**AI instructions are now visible on the front page, and dead text counts as dead code.**

- **`README.md` carries the full AI instruction block inline** (🤖 AI 請看這邊 / AI assistants, read this,
  bilingual) — no folder-digging required. A person sees “AI, read this block”, reads the section below it.
  The long-form copy still lives in `AGENTS.md` / `llms.txt` for machines.
- **New baseline rule B1 (in `SKILL.md`, both languages)**: no dead code — and **dead text counts as
  dead code**. Every edit must delete the superseded, duplicated or weaker version of the text in the
  same change, and remove files nothing links to any more. The definition-of-done list now checks for
  dead text and orphaned files, not just dead code.
- **The rule was applied to this repository** rather than just written down: `README.md` was rewritten as
  one coherent document (duplicated install steps, the redundant “instruction sheet” block, and the
  overlapping *Who it is for* / *Why this exists* sections were merged or removed), the Chinese section
  lost its duplicated install steps, and the now-unreferenced `assets/cover.png` was deleted.

## [0.4.1] — 2026-09-30

- `AGENTS.md`: added one rule learned from a live test — **state the destination path before writing**
  (*“I am going to install it at `<full path>`”*). During testing, an assistant correctly followed
  `AGENTS.md` and installed itself, but did it silently into the user's home directory. Correct behaviour,
  surprising side effect; the rule now forbids the silent part.
- Verified live: an assistant was given the repository and the instruction *“install this skill”*;
  with no further guidance it read `AGENTS.md`, installed the folder, and ran the exact verification
  steps from section 1 step 3 (SKILL.md present · `name: lorekeeper` · `references/` and `tasks/` present).

## [0.4.0] — 2026-09-30

**Now readable by people *and* by AI — including the ZIP route.**

- **New `AGENTS.md`** (repository root): the instruction sheet for AI assistants. Exact install steps,
  the required end state (`<skills dir>/lorekeeper/SKILL.md`), the verification to run before claiming
  success, what not to touch, and a Chinese section. Because it sits at the repository root, any assistant
  that opens the repo (or the unzipped ZIP) reads it automatically.
- **New `llms.txt`**: a compact machine-readable index of the repository (what it is, how to install,
  what it enforces, licence).
- `README.md` now opens with a *choose your instruction sheet* line — 👤 people → `INSTALL.md`,
  🤖 AI → `AGENTS.md`, 📄 machine summary → `llms.txt` — and gained a **Who it is for** section: this is
  built for people who are not engineers, to remove everyday pain rather than add a tool to learn.
- `INSTALL.md` gained the same split table and points AI assistants at `AGENTS.md`; it also notes that the
  Way-3 ZIP contains `AGENTS.md`, so an AI opening the unzipped folder knows what to do.
- **Health check added to the pre-commit hook** (`lorekeeper_健檢.py`): required files present, every relative
  Markdown link resolves, `SKILL.md` frontmatter valid, exactly one `SKILL.md`, and the published install
  commands present where they should be. A broken link or a missing file can no longer be committed.

## [0.3.0] — 2026-09-30

**Installation rewritten so a non-technical person can do it.**

- `INSTALL.md` restructured: three ways, easiest first — ① ask your AI to install it,
  ② one line in the terminal, ③ download-and-copy with no terminal. Plain-language
  troubleshooting table, install-location options, and uninstall steps.
- `_install/install.sh` and `_install/install.ps1` rewritten:
  - **no longer require git** (they download the repository ZIP and extract it),
  - ASCII-only output so they cannot break on any console text encoding,
  - clear success message plus the two next steps,
  - optional `SKILLS_DIR` to choose the destination, `KEEP_TMP=1` to keep the temp files.
- Both installers were **actually run on a clean target** (macOS/Linux script under bash, Windows
  script under PowerShell) and verified to place `SKILL.md` correctly before this release.

## [0.2.0] — 2026-09-30

Makes the self-evolution capability explicit — the part that makes it "stronger every time".

- New README hero banner and a **self-evolution loop diagram**
  (`assets/banner.png`, `assets/loop.png`).
- New README section: **It gets stronger every time (the loop)** — do the task → record the lesson →
  write the task pack → next time is faster, with a without-the-loop / with-the-loop comparison.
- Comparison table expanded from 2 columns / 6 rows to 3 columns / 10 rows,
  including context discipline, redaction before publishing, cross-assistant portability and cost.
- Traditional Chinese section now states the loop explicitly.

## [0.1.1] — 2026-09-30

Fixes found by validating against the Agent Skills specification.

- **Renamed** `locales/zh-TW/SKILL.md` → `locales/zh-TW/SKILL.zh-TW.md`.
  Two files named `SKILL.md` in one skill folder are discovered as two skills with the same name
  (name collision → the second one is dropped, or the skill fails to load in implementations that
  require the declared name to match the folder). One folder, one `SKILL.md`.
- Added the `license` frontmatter field (declared by the specification).
- Added a cover image to the README.
- README: real install URL in the Chinese section.

## [0.1.0] — 2026-09-30

First release.

**Main skill**
- Five laws: know the owner / never guess / never coast / find better tools / keep the lessons.
- Anti-hallucination rules: evidence, confidence labels, search lessons before diagnosing, test before spending.
- Anti-slacking rules: plan first, per-step checks, no faked tests, list leftovers, definition of done.
- Layered loading: thin main skill + task packs read on demand, one at a time.
- New task protocol: the skill writes a new pack after doing a task type for the first time.

**References**
- `owner-profile.md` — profile template and update discipline.
- `lessons.md` — lesson ledger format (own experience + other people's).
- `skill-eval.md` — comparison table and install policy.
- `safety-check.md` — 🟢🟡🔴 vetting of third-party skills, with its honest limitations.

**Task packs**
- `video.md` — three routes (precise / generative / hybrid), 8-step pipeline,
  audio-first rule to stop narration overlap, no-generated-text rule, self-check list.

**Docs**
- README (English + Traditional Chinese), INSTALL (two methods, three operating systems),
  Licence (all rights reserved / source-available).

**Traditional Chinese**
- Full translated skill under `locales/zh-TW/SKILL.zh-TW.md` (rename to `SKILL.md` to use it as the main file).
