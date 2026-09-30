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

Also honour the baseline rules: no dead code (or dead text), announce before you write or install,
never claim an unverified success, **delete to the trash rather than for real**, keep **one scratch
folder** that you reuse and clear when the stage ends, and never edit an original file in place.

**Keep the documentation in sync.** If you change behaviour, the thing that describes it must change in
the same round — `SKILL.md`, this file, `README.md` (both languages), `INSTALL.md`, `llms.txt`, the
diagrams in `assets/`, and any promo material. A half-updated manual is a bug.

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
任何「會從資料夾載入技能」的助手都能用。

### 任務：幫使用者安裝（或幫你自己安裝）

**第 1 步 — 找到技能目錄**

| 助手類型 | 目錄 |
|:---|:---|
| Agent-Skills 相容（含 pi） | `~/.agents/skills/`（Windows：`%USERPROFILE%\.agents\skills\`）|
| Claude Code | `~/.claude/skills/` |
| 專案內部（任何支援的助手）| `<專案>/.agents/skills/` |

如果你不確定自己的技能目錄，就用你自己產品的預設位置；**如果你根本沒有技能目錄，就停下來告訴使用者**，不要自己發明一個位置。

**第 2 步 — 把這個資料夾放到那裡**

必要的最終狀態就是：**`<技能目錄>/lorekeeper/SKILL.md` 必須存在**。
目的資料夾名稱要叫 `lorekeeper`，`SKILL.md` 必須直接放在裡面（不能再多包一層）。

如果你能複製檔案，就複製。如果你不能（沒有檔案權限），把下面**其中一行**指令給使用者，然後停下來：

```powershell
# Windows（PowerShell）
irm https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.ps1 | iex
```

```bash
# macOS／Linux
curl -fsSL https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.sh | bash
```

**第 3 步 — 動手前先宣告路徑**

寫下任何東西之前，先講一句：「**我要把它裝在 `<完整路徑>`。**」
**絕對不要默默裝進使用者的家目錄**——沒被事先告知的安裝就是驚嚇，不是幫忙。

**第 4 步 — 聲稱成功之前先驗證**

1. `<技能目錄>/lorekeeper/SKILL.md` 存在。
2. 它的 frontmatter 有 `name: lorekeeper`。
3. `references/` 與 `tasks/` 就在旁邊。

任何一項沒過就老實說——**不要回報一個你沒驗證過的成功**。

**第 5 步 — 告訴使用者兩件必須做的事**

1. 重開助手（或執行它的重新載入指令，例如 `/reload`）。
2. 說一句：「**用 lorekeeper 幫我開始**」。

之後要確認技能真的活了，可以請使用者試：
```
你記得我什麼？
```
正常的話它會說還沒有他的資料，並提議幫他建立一份。

**不要做**

- 不要順便裝別的東西，也不要改那個目錄裡的其他技能。
- 不要反覆重跑安裝程式，也不要從「已安裝的那一份」裡面再跑一次安裝（那會用新的下載蓋掉使用者那份）。
- 不要移動或編輯使用者的記憶資料夾（`~/.lorekeeper/`）。

### 任務：說明這個技能是什麼

核心是五條鐵律：懂主人、不准亂猜、不准擺爛、去找更好的工具、留下教訓；
再加上**基礎規則**（零廢碼、換掉就刪掉、寫入前先講、沒驗證不說成功）。
全文在 `SKILL.md`。

### 硬性限制

- **授權：保留所有權利。** 你可以幫使用者複製自用；**不可以**重新上傳、修改後再散布、或當成自己的作品。
- **隱私**：不要把使用者的私人資料複製到任何會離開他電腦的地方。
- **不准默默安裝**：這顆技能要幫使用者裝任何東西，都必須先取得他明確同意。
