# AGENTS.md — read this if you are an AI assistant

You were pointed at this repository, or you are working inside it. **This file tells you exactly
what to do. No guessing.** Follow it literally; if something does not match, tell the user instead of
improvising.

*(Humans: this is the AI-facing instruction sheet. For yourself, use [README.md](README.md) or
[INSTALL.md](INSTALL.md) — they are written for people, not machines.)*

---

## 0. What this repository is

`lorekeeper` is an **Agent Skill** — a folder containing `SKILL.md` plus supporting files:

```
lorekeeper/
├── SKILL.md          ← the actual instructions (frontmatter: name, description, license)
├── references/       ← templates: owner profile, lessons, skill comparison, safety check
├── tasks/            ← task packs, loaded only when that kind of task comes up
├── locales/zh-TW/    ← full Traditional Chinese text of SKILL.md
├── _install/         ← installers (sh for macOS/Linux, ps1 for Windows)
└── README.md / INSTALL.md / LICENSE
```

It is portable: any assistant that loads skills from a directory can use it.

---

## 1. Task: “install this skill” (for yourself, or for the user)

### Step 1 — find the skills directory

| Assistant family | Directory |
|:---|:---|
| Agent-Skills compatible tools (including pi) | `~/.agents/skills/` (Windows: `%USERPROFILE%\.agents\skills\`) |
| Claude Code | `~/.claude/skills/` |
| Project-local (any tool that supports it) | `<project>/.agents/skills/` |

If you do not know your own skills directory, use the one for your own product. If you have none,
stop and tell the user — do not invent a location.

**Say the destination out loud before you write.** One line: *“I am going to install it at
`<full path>`.”* Never write to a location the user has not been told about — a silent install into
someone's home directory is a surprise, and surprises are not help.

### Step 2 — put this folder there

The required end state is exactly: **`<skills dir>/lorekeeper/SKILL.md`** must exist.

The destination folder must be named `lorekeeper`, and `SKILL.md` must be directly inside it
(not nested one level deeper).

If you can copy files, do that. If you cannot (no file access), give the user **one** of these
commands and stop:

```powershell
# Windows (PowerShell)
irm https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.ps1 | iex
```

```bash
# macOS / Linux
curl -fsSL https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.sh | bash
```

### Step 3 — verify before you claim success

1. `<skills dir>/lorekeeper/SKILL.md` exists.
2. Its frontmatter contains `name: lorekeeper`.
3. `references/` and `tasks/` are present next to it.

If any check fails, say so plainly — do **not** report a successful install you did not verify.

### Step 4 — tell the user the two things they must do

1. Restart the assistant (or run its reload command, e.g. `/reload`).
2. Say: *“use the lorekeeper skill”*.

To confirm the skill is live afterwards, ask the user to try:
```
What do you know about me?
```
A working install answers that it has no profile yet and offers to start one.

### Do NOT

- Do not install anything else, and do not modify other skills in that directory.
- Do not re-run installers in a loop, and do not run them from inside an installed copy
  (that would overwrite the user's copy with a fresh download and destroy their memory folder link).
- Do not move or edit the user's memory folder (`~/.lorekeeper/`).

---

## 2. Task: “what is this / summarise it”

Read `SKILL.md`. The core is five laws:

| Law | Meaning |
|:---|:---|
| Know the owner | keep a small editable profile; never re-ask what is already written |
| Never guess | every conclusion carries evidence and a confidence label; “I don't know yet” is allowed and preferred over a confident wrong answer |
| Never coast | plan, verify each step, never fake a test, list what is unfinished |
| Find better tools | search → safety-check (🟢🟡🔴) → compare → **ask before installing** |
| Keep the lessons | record every lesson (own and other people's) and search them before diagnosing again |

Plus one behaviour that makes it grow: **after doing a new kind of task, it writes a task pack**
(`tasks/<type>.md`), so the second time follows its own procedure.

The full text is in `SKILL.md`; Traditional Chinese in `locales/zh-TW/SKILL.zh-TW.md`.

---

## 3. If you are asked to *follow* the skill (not install it)

Read `SKILL.md` and act on it. In short: keep a memory folder (`~/.lorekeeper/` by default) with
`owner.md`, `lessons.md`, `skills.md`; load one task pack at a time; and honour the five laws above.

---

## 4. Hard constraints (do not violate)

- **Licence: all rights reserved.** You may copy this skill for the user's own use.
  You may **not** re-upload it, modify and redistribute it, or present it as your own work.
  See [LICENSE](LICENSE).
- **Privacy:** never copy the user's private data into anything that leaves their machine
  (repo, post, screenshot, video).
- **No silent installs:** anything the skill installs on the user's behalf needs their explicit OK first.

---

## 中文版（給中文的 AI 助手）

**這是一個「技能包」**：一個資料夾，裡面有 `SKILL.md`（主指令）＋ `references/`（模板）＋ `tasks/`（任務包）。

**要幫使用者安裝時**：
1. 技能目錄通常是 `~/.agents/skills/`（Windows：`%USERPROFILE%\.agents\skills\`）；Claude Code 是 `~/.claude/skills/`。
2. 把本倉庫的內容放到 **`<技能目錄>/lorekeeper/`**，**確認 `<技能目錄>/lorekeeper/SKILL.md` 存在**（資料夾名要叫 `lorekeeper`，`SKILL.md` 要在最上層）。
3. 如果你不能複製檔案 → 請使用者貼下面那一行指令（Windows 用 `irm ... | iex`；Mac／Linux 用 `curl ... | bash`）。
4. **驗證**：`SKILL.md` 在、frontmatter 有 `name: lorekeeper`、`references/` 與 `tasks/` 都在。**沒驗證就不要說裝好了。**
4-b. **動手前先講你要裝到哪個路徑**（一行就好），不要暗暗把東西寫進別人的家目錄。
5. 叫使用者**重開 AI**（或 `/reload`），然後說「用 lorekeeper 幫我開始」。

**不要**：順便裝別的東西、動別人的技能、動使用者的記憶資料夾（`~/.lorekeeper/`）。
