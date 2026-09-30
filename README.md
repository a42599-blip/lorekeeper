# lorekeeper 🧠

![lorekeeper — 越用越懂你，越用越聰明](assets/banner.png)

**Get to know you better, get smarter every time.** ｜ 中文：**越用越懂你，越用越聰明。**

> This is not a static prompt — **it is a loop.** Every task makes it stronger: it does the work,
> records the lesson, turns that lesson into a reusable task pack, and starts the next similar task
> from that pack instead of from zero. → [see the loop](#it-gets-stronger-every-time-the-loop)

---

## 🤖 AI 請看這邊 / AI assistants, read this

> 中文：**如果你是 AI 助手，看完這段就可以動手了。人類不用讀這段，直接往下一節看。**

**Install and use this skill. Exactly these steps — no guessing:**

1. **Find the skills directory.** Agent-Skills compatible tools (incl. pi): `~/.agents/skills/`
   (Windows: `%USERPROFILE%\.agents\skills\`) · Claude Code: `~/.claude/skills/`.
2. **Put this repository's contents at `<skills dir>/lorekeeper/`** so that
   `<skills dir>/lorekeeper/SKILL.md` exists. The folder must be named `lorekeeper` and `SKILL.md`
   must sit directly inside it.
3. **If you cannot copy files**, give the user exactly one command and stop:
   - Windows (PowerShell): `irm https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.ps1 | iex`
   - macOS / Linux: `curl -fsSL https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.sh | bash`
4. **Announce the destination before you write anything:** *“I am going to install it at `<full path>`.”*
   Never install silently into someone's home directory.
5. **Verify before claiming success:** `SKILL.md` exists · frontmatter contains `name: lorekeeper` ·
   `references/` and `tasks/` are next to it. If a check fails, say so — do not report a success you did not verify.
6. **Then tell the user the two steps:** restart the assistant (or `/reload`), then say *“use the lorekeeper skill”*.
7. **Do not touch** other skills in that directory, and do not touch the user's memory folder (`~/.lorekeeper/`).

Then open **[`SKILL.md`](SKILL.md)** and act on it.
Full version of this block: **[`AGENTS.md`](AGENTS.md)** · machine index: **[`llms.txt`](llms.txt)**

**中文版（給 AI 的同一段）**
1. 找到技能目錄：Agent-Skills 相容工具（含 pi）＝`~/.agents/skills/`（Windows：`%USERPROFILE%\.agents\skills\`）；Claude Code＝`~/.claude/skills/`。
2. 把本倉庫內容放到 **`<技能目錄>/lorekeeper/`**，**確認 `<技能目錄>/lorekeeper/SKILL.md` 存在**（資料夾名要叫 `lorekeeper`、`SKILL.md` 要在最上層）。
3. 你不能複製檔案 → 把上面那一行指令給使用者就好。
4. **寫入前先講你要裝到哪個路徑**，不要默默把東西寫進別人的家目錄。
5. **先驗證再回報成功**：`SKILL.md` 在、frontmatter 有 `name: lorekeeper`、`references/` 與 `tasks/` 都在。
6. 叫使用者**重開 AI**（或 `/reload`），然後說「用 lorekeeper 幫我開始」。
7. **不要動別人的技能**，也不要動使用者的記憶資料夾（`~/.lorekeeper/`）。
→ 然後讀 **`SKILL.md`** 照著做。

---

## 👤 人類看這裡 / For people

A portable skill that makes any AI assistant:

- **learn its owner** instead of asking the same things forever,
- **find and compare real tools** instead of improvising with the first method it thinks of,
- **stop making things up** — evidence first, "I don't know yet" when there is none,
- **stop coasting** — plan, verify each step, never fake a test, list what is unfinished,
- **keep every lesson** — its own mistakes *and* other people's — so nothing is paid for twice.

> `lore` = knowledge and lessons passed down. `keeper` = the one who preserves it.
> This skill is the keeper of its owner's accumulated knowledge — that is why it gets better over time.

**中文介紹**：[跳到中文說明](#中文說明)

---

## Why this exists (and who it's for)

Four complaints show up with every AI assistant:

| # | Complaint | What it costs |
|:-:|:---|:---|
| 1 | "I have to re-explain myself in every new chat" | Time, every single day |
| 2 | "It confidently told me something wrong" | Money, hours, wrong purchases |
| 3 | "It made the same mistake again" | Trust |
| 4 | "It used the clumsiest method available" | Quality |

It is built for **people who are not engineers** — the ones who know *something is wrong* but cannot
say it in technical words, and who should not have to learn what a “proxy” or a “config file” is in
order to get help. Install takes about a minute: no git, no Python, no Node.

The goal is simple: **remove everyday pain — not add one more tool to learn.**

---

## The five laws

| Law | Meaning |
|:---|:---|
| **1. Know the owner** | Keep a small, editable profile of how the owner works; never re-ask what is already written down |
| **2. Never guess** | Every conclusion carries its evidence and a confidence label. A confident wrong answer is worse than "I don't know yet" |
| **3. Never coast** | Plan → step → verify → report leftovers. If you say you tested something, you actually ran it |
| **4. Find better tools** | Search, safety-check, compare, and **ask before installing** |
| **5. Keep the lessons** | Write down what went wrong — yours and other people's — and search them before diagnosing again |

## Baseline rules (every round — not a task pack)

| # | Rule | In practice |
|:-:|:---|:---|
| **B1** | **Leave no dead code. Every round.** | After **every** change — not at the end of the project — remove what is now unused: dead functions, unused variables and imports, commented-out old code, unused CSS rules, unused translation keys, orphaned wiring. **This applies to documents too**: an edited page must lose the superseded, duplicated or worse version of the text, so it reads as one coherent document instead of a pile of appendices. Where a checker exists, run it to **zero**; otherwise do the pass by hand. |
| **B2** | **Replace means delete.** | When you swap an implementation, the old one goes in the same change. Never leave the previous version commented out "just in case" — version control is the just-in-case. |
| **B3** | **Announce before you write or install.** | One line: what you are about to create, change or install, and where. Never modify the owner's environment without telling them first. |
| **B4** | **No unverified success.** | "Done" means you ran the check and can point at its output. Otherwise say "not tested yet". |

### Every round ends with a self-check report

Before reporting back, the assistant sweeps its own work and says so — the way you would report
“zero dead code” at the end of a shift:

```
Round self-check / 本輪自檢
- 廢碼 dead code .......... 0     (or: removed <what, where>)
- 廢文字/stale data ....... 0     (or: removed <what, where>)
- 我自己抓到 caught myself . <a bug it noticed · a wrong assumption · a better method> — fixed, verified how
- 還沒做 / untested ....... <list>
```

It **deletes what it produced that is no longer useful** — unused code, superseded paragraphs, stale
notes, orphaned files — every round, not at the end of the project, and tells you what it removed and
what it caught by itself. “All done” without this block does not count.

![Every round, it cleans up after itself](assets/selfcheck.png)

Why it matters: work that is never swept gets slower and less trustworthy every week — the opposite of
what this skill is for.

---

## It gets stronger every time (the loop)

![The self-evolution loop](assets/loop.png)

| Step | What happens |
|:---|:---|
| ① **Do the task** | plan → steps → verify each step, no matter what the task is |
| ② **Record the lesson** | symptom → what we assumed → the real cause → the fix. **Its own lessons *and* other people's.** |
| ③ **Write it into a task pack** | the method that worked becomes a reusable page (`tasks/<type>.md`) |
| ④ **Next time is faster** | it reads the pack first, so the same mistake cannot repeat |

A prompt is frozen. This keeps changing. The first time you make a promo video, the assistant
improvises, verifies, and writes the pack down. The second time it follows its own procedure.
The strength accumulates.

| Situation | Without the loop | With the loop |
|:---|:---|:---|
| The same symptom appears again | guesses again — and the guess may cost real money | finds the earlier entry and starts from the **verified** cause |
| A brand-new kind of task | improvised from scratch, every single time | done once, then written down as a procedure |
| A tool goes stale | keeps using it | marks it deprecated and looks for a better one |

---

## How it works (three layers)

![What actually happens when you give it a task](assets/process.png)

```
MAIN SKILL  (always read — deliberately thin)
├─ know the owner
├─ never guess        ← anti-hallucination
├─ never coast        ← anti-slacking
├─ find better tools  ← search + safety check + comparison
├─ keep the lessons
└─ baseline rules     ← no dead code · announce before writing · no unverified success

TASK PACKS  (read on demand — one at a time)
├─ video
├─ slides
├─ websites
└─ …whatever you do next (the skill writes new packs after the first run)

MEMORY  (stays on your machine, never uploaded)
├─ owner.md      how you like to work
├─ lessons.md    every lesson
└─ skills.md     installed tools + comparisons
```

Why layered: dumping everything into the assistant's context makes it **dumber**, not smarter.
The main skill stays thin; the right pack is loaded only when that kind of task appears.

**The pack-writing loop is the point:** the first time a task is done it is work;
after that the skill writes its own procedure and the second time is fast.

---

## Install

**Takes about a minute. Pick ONE — no git, Python or Node needed.**

**① Let your AI install it (easiest)** — paste this into your assistant:

```
Install the skill at https://github.com/a42599-blip/lorekeeper for yourself, then start using it.
```

**② One line in the terminal**

```powershell
# Windows (PowerShell)
irm https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.ps1 | iex
```

```bash
# macOS / Linux
curl -fsSL https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.sh | bash
```

**③ No terminal at all** — Code → Download ZIP → rename the folder to `lorekeeper` →
put it in your assistant's skills folder (ask it: *"which folder do you load skills from?"*)
→ restart. The ZIP contains `AGENTS.md`, so an assistant that opens the unzipped folder knows what to do.

**Check it worked:** ask *"what do you know about me?"* — a working install says it has no profile yet
and offers to start one.

Supported: **Windows, macOS, Linux**. Mobile assistants are not supported (they load skills differently).
Install-location options, troubleshooting and uninstall: **[INSTALL.md](INSTALL.md)**.
(Assistants: use **[AGENTS.md](AGENTS.md)** — that is where the machine instructions live.)

---

## Quick start

```
You:    Make me a 30-second promo video for my coffee shop.
AI:     Route: precise (screen/layout based) — because it has text and numbers.
        Plan: 1 script → 2 narration → 3 measure → 4 timeline → 5 frames → 6 compose → 7 subtitles → 8 check
        Step 1 first: here are 6 lines. Confirm or edit, then I continue.
```

What should *not* happen: the assistant silently generates random footage and declares it finished.

---

## What is different — and why it is worth downloading

![The same task, two very different days](assets/compare.png)

The same request — *“make me a 30-second promo video”* — takes two very different paths.
On the right, every step is one a competing assistant skips: classifying the task before starting,
writing the plan first, **audio before the timeline** (so narration can never overlap), **laying out
text instead of generating it** (so letters never break), checking the result against a list, reporting
its own self-check, and then writing the procedure down so the next video is faster.

**Why you would download it rather than keep using what you have:** less money spent on wrong
diagnoses (evidence before conclusions, a cheap test before any paid “fix”), less redoing (plan +
per-step verification + self-check instead of one-shot output), faster every time (it writes its own
task packs and lesson ledger), and it never quietly rots (every round it deletes its own dead code,
dead text and stale notes — and tells you what it caught).

| | Plain memory note | Prompt template | **lorekeeper** |
|:---|:---:|:---:|:---:|
| Remembers your preferences | ✅ | ❌ | ✅ (small, editable profile; never re-asks) |
| **Gets stronger over time** | ❌ | ❌ | ✅ **writes its own task packs** |
| Anti-hallucination rules | ❌ | ❌ | ✅ evidence + confidence labels; test before spending |
| Anti-slacking rules | ❌ | ❌ | ✅ plan, per-step checks, no faked tests, leftovers listed |
| **No dead code / no dead text** | ❌ | ❌ | ✅ enforced **and reported** every round |
| Tool discovery + safety vetting | ❌ | ❌ | ✅ search → 🟢🟡🔴 → ask before installing |
| Lessons from other people | ❌ | ❌ | ✅ recorded next to your own |
| Context discipline | — | ❌ (eats context) | ✅ thin main skill + packs loaded on demand |
| Redaction before publishing | ❌ | ❌ | ✅ names, paths, tokens, domains |
| Works across assistants | — | depends | ✅ plain Markdown folder |
| Cost | free | free | free (only the tool-search step needs the internet) |

---

## Privacy

- Memory files live **on your machine**. This skill uploads nothing.
- It refuses to store secrets unless you ask in that moment, and it says where they would be written.
- You can always ask **"what do you know about me?"** and delete any line.
- Anything generated for publication gets a redaction pass (names, paths, tokens, domains).

---

## FAQ

**Does it need a specific assistant?** No. It is a plain `SKILL.md` folder with Markdown files —
it works with any assistant that loads skills from a directory.

**Does it need an internet connection?** Only for the "find better tools" search step. Everything else is local.

**Will it install things behind my back?** No. Searching is automatic; installing always asks.

**How do I update it?** Run the one-line installer again — it replaces the skill folder and leaves
your memory folder (`~/.lorekeeper/`) untouched.

**How do I remove it?** Delete the skill folder, and optionally the memory folder. Nothing else is touched.

---

## Licence, contributing

This project is **download-and-use only**: the source is published so people can read and trust it,
not to accept modifications. Bug reports and suggestions are welcome in the issues.
See [LICENSE](LICENSE) for the full terms (`All rights reserved` — download and use, do not modify
and redistribute, do not present it as your own).

Built by [@a42599-blip](https://github.com/a42599-blip). Other work: <https://scefo.com>

---

## 中文說明

**越用越懂你，越用越聰明。**

`lorekeeper`（中譯：**守知者**）是一份可以放進各種 AI 助手的技能，讓它：

- **慢慢懂你**：把你的習慣、偏好、規矩記下來，不用每次重講
- **不再亂講**：每個結論都要有證據，沒證據就說「還不確定」，不准給自信的錯誤答案
- **不再擺爛**：先計畫、切成步驟、每一步都驗證、不假裝測過，最後列出沒做完的部分
- **自己找工具**：上網搜、做安全體檢（🟢🟡🔴）、互相比較，**要裝之前一定先問你**
- **把教訓留下來**：自己的錯、別人踩過的坑，全部寫進筆記，下次先翻筆記再判斷

**它會自己變強（自我進化迴圈）**：做任務 → 記錄教訓（自己的＋別人的）→ **把這次的做法寫成一頁任務包** → 下次先翻筆記再動手。
第一次做某類任務是「工作」，做完之後技能會**自己寫出一套流程**，第二次就變快、而且不會再踩同一個坑。

**基礎規則（每一輪都適用）**：① **不留廢碼**（程式碼、說明文件都一樣，改完當下就清）② 換掉就刪掉，不留註解掉的舊版
③ 寫入或安裝前先講一聲 ④ 沒驗證不准說成功。

**三層架構**：主技能（永遠讀、很薄）＋ 任務包（要用才讀，例如影片、簡報）＋ 記憶（只存在你自己的電腦）。

**安裝**：三種方法選一種——① 叫你的 AI 裝（上面 🤖 那段）② 貼一行指令 ③ 下載 ZIP 放進技能資料夾。
完整步驟與障礙排除見 `INSTALL.md`。**支援 Windows / macOS / Linux；手機版 AI 不支援。**

**中文技能全文**：`locales/zh-TW/SKILL.zh-TW.md`（想讓它當主檔就把那支檔案改名成 `SKILL.md`；
一個技能資料夾只能有一個 `SKILL.md`）。

**授權**：保留所有權利——**可以下載使用、可以推薦，但不能修改後再散布、不能當成自己的作品**。
