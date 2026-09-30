# Changelog

All notable changes to this project are recorded here.
Format: date — change. Versions are loose (this is a document-driven skill).

## [0.11.0] — 2026-09-30

**The scratch-folder workflow is now written into the manual itself — and everything that describes it moved together.**

- **New README section, both languages: “How a change actually flows (including the scratch folder).”**
  It explains the whole habit in prose, not just as a rule: one scratch folder (default on the Desktop,
  location confirmed with the owner once), working copies and drafts live there, the original is never
  edited in place, the scratch subfolder goes to the trash when the stage or deployment is confirmed, and
  only the final version goes back into the project. It also states why: a machine that is never swept
  gets slower every week, and keeping the original plus the copy until the result is confirmed is what
  makes a mistake recoverable.
- **The process diagram now shows it**: a dedicated band under the task flow —
  *before any file work: create a scratch folder → copies, downloads, drafts and renders live there →
  stage done and deployment confirmed: move it to the trash → only the final version goes back into the
  project.* The self-check diagram also gained its `scratch files ...... none left` line.
- **“Everything travels together” is now an explicit rule** in the README (both languages), `AGENTS.md`
  and `llms.txt`: a change is not finished until README (both languages), `SKILL.md`, `INSTALL.md`,
  `AGENTS.md`, `llms.txt`, the diagrams and the promo material all say the same thing. A half-updated
  manual is a bug, not a leftover.
- Fixed while reviewing the diagrams: the Chinese process diagram had a duplicated headline, and the
  sticker was overlapping the last step card.

## [0.10.2] — 2026-09-30

**The scratch-folder rule is now spelled out properly — because that is the thing that stops a machine from quietly growing.**

- **B6 rewritten** (both languages, plus both README halves): set up the scratch folder **proactively,
  before the first file operation**, and keep **reusing the same one** (one subfolder per task or stage).
  Every working copy, download, extracted archive, draft, render and “copy it while I rewrite it” goes
  there — never into the project folder and never next to the original file. Default location: the
  owner's Desktop, e.g. `Desktop/_ai-scratch/<task>/` — **ask the owner once where they want it, then
  keep using that place**. Clear the subfolder to the trash the moment the stage ends.
- **B7 added: never work on the original.** Copy to the scratch folder first, work on the copy, compare,
  then replace. The original is the fallback plan.
- The round self-check line now spells out the reason: *“I might need it later” is how a machine grows
  fatter every week and gets slower.*
- Covers everyday requests too — including “just tidy this folder up”, which is a file-copying task.

## [0.10.1] — 2026-09-30

**The public repository now carries no link to anything else of the author's.**

- Removed the external project link from the author line (English and Chinese halves). What remains is
  only the GitHub account that owns this repository — nothing pointing at any private project,
  brand or asset. The public skill is a self-contained tool: people download it and make it their own.
- The redaction scan that guards the repository was tightened to match: it no longer accepts that
  author-block exception, so any name, domain, private path or private file reference fails the
  pre-commit check again.

## [0.10.0] — 2026-09-30

**Two habits from real work, now part of the base skill: delete safely, and leave no temporary mess.**

New baseline rules B5 and B6 in `SKILL.md` (both languages) and in both README halves:

- **B5 — Delete to the trash, never for real.** Deleting is irreversible; the owner's ability to
  recover from your mistake is not. Files, folders and temporary files all go to the recycle bin /
  trash (or a `trash` command). Never `rm -rf`, never `del`, never a permanent delete, and never empty
  the trash — that is the owner's decision alone. If the trash tool is unavailable, ask; do not upgrade
  to a harder delete.
- **B6 — Work in a scratch folder, clear it when the stage ends.** Give each task its own clearly named
  scratch folder, keep every intermediate artefact there, and move the whole folder to the trash the
  moment the stage or task finishes — not “for later”. A machine that grows fatter every week is a slow
  machine.

Supporting changes: the round self-check gained a **scratch files** line (`none left`), the
definition-of-done list gained a matching item, the comparison table notes *safe deleting + scratch
cleanup*, and the sticker on all ten diagrams now reads **廢碼 · 安全 · 零殘留**
(English: **DEAD CODE · SEC · NO LEFTOVERS**).

## [0.9.0] — 2026-09-30

**The strength is now impossible to miss — a shop-window sticker, and security joins the per-round check.**

- **Security added to the round self-check** (SKILL.md both languages, README both languages):
  every round also sweeps for **leaked secrets or tokens** (in code, documents, commits, logs,
  screenshots, generated media), **private data leaving the machine**, and **anything installed
  without the owner's approval**. Report line: `security ...... clean`.
  A clean result is the only acceptable result.
- **A big sticker on the diagrams** — the make-or-break claim is no longer small grey text.
  All ten diagrams (five Chinese, five English) now carry a rotated, glowing badge reading
  **每輪質檢 / 0 / 廢碼 · 安全隱患** (English: **EVERY ROUND / 0 / DEAD CODE · SECURITY**).
  On the banner it sits in its own column; on the other diagrams it sits top-right.
- **The report block is no longer faint either**: the two `0`s in the self-check diagram are rendered
  at display size, with `security  clean` beside them.
- **The Chinese diagrams are now Chinese-only**, headlines included — the English headlines that were
  still sitting on top of the Chinese versions are gone, so each language version is pure.

## [0.8.0] — 2026-09-30

**The Chinese documentation is now a complete translation, not a summary — and the two languages never mix.**

- `README.md` and `INSTALL.md` are now **two complete versions in one file**: a full English version,
  then a full Chinese version, each with its own title, images, tables, install commands, FAQ and
  troubleshooting. Nothing is abbreviated in the Chinese half any more.
- Each half opens with a jump link in the *other* language, so a reader lands on the language they
  can read immediately:
  - top of the English half → 「👉 中文版說明在下面：**點這裡直接跳到中文版**」
  - top of the Chinese half → *“👉 English version is above: click here to jump back up”*
- **No language mixing**: the English half is English only (its own images included), the Chinese half
  is Chinese only. That is why every diagram now has an English twin — `banner-en.png`, `loop-en.png`,
  `process-en.png`, `compare-en.png`, `selfcheck-en.png` — and each half shows the images in its own language.
- `AGENTS.md`: the Chinese section was expanded into a full mirror of the English instructions
  (skills-directory table, required end state, announce-the-destination step, verification list,
  the “do not” list), instead of the short summary it used to be.

## [0.7.1] — 2026-09-30

- **Fixed a self-caught slip, and it is a good example of the rule working.** The orphan-file sweep
  (part of the new round self-check) found that `assets/selfcheck.png` was created but only mentioned
  in this changelog — no document actually displayed it. `README.md` now shows it in the round
  self-check section, where it belongs. Created-but-unused is exactly the kind of thing that otherwise
  accumulates unnoticed.

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
