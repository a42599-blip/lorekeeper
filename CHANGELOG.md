# Changelog

All notable changes to this project are recorded here.
Format: date — change. Versions are loose (this is a document-driven skill).

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
