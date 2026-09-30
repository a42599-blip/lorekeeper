# lorekeeper 🧠

![lorekeeper — 越用越懂你，越用越聰明](assets/banner.png)

**Get to know you better, get smarter every time.**

> This is not a static prompt — **it is a loop.** Every task makes it stronger: it does the work,
> records the lesson, turns that lesson into a reusable task pack, and starts the next similar task
> from that pack instead of from zero. → [see the loop](#it-gets-stronger-every-time-the-loop)

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

## Why this exists

Four complaints show up with every AI assistant:

| # | Complaint | What it costs |
|:-:|:---|:---|
| 1 | "I have to re-explain myself in every new chat" | Time, every single day |
| 2 | "It confidently told me something wrong" | Money, hours, wrong purchases |
| 3 | "It made the same mistake again" | Trust |
| 4 | "It used the clumsiest method available" | Quality |

`lorekeeper` addresses all four with **five laws** and a **layered manual that grows by itself**.

---

## The five laws

| Law | Meaning |
|:---|:---|
| **1. Know the owner** | Keep a small, editable profile of how the owner works; never re-ask what is already written down |
| **2. Never guess** | Every conclusion carries its evidence and a confidence label. A confident wrong answer is worse than "I don't know yet" |
| **3. Never coast** | Plan → step → verify → report leftovers. If you say you tested something, you actually ran it |
| **4. Find better tools** | Search, safety-check, compare, and **ask before installing** |
| **5. Keep the lessons** | Write down what went wrong — yours and other people's — and search them before diagnosing again |

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

```
MAIN SKILL  (always read — deliberately thin)
├─ know the owner
├─ never guess        ← anti-hallucination
├─ never coast        ← anti-slacking
├─ find better tools  ← search + safety check + comparison
└─ keep the lessons

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

Two ways — pick either. **Full details: [INSTALL.md](INSTALL.md)**

**A. Let your assistant install it (easiest)**

Paste this to your AI assistant:

```
Install the lorekeeper skill for yourself and start using it:
https://github.com/a42599-blip/lorekeeper
```

**B. Copy the folder (manual)**

1. Download this repository (Code → Download ZIP) and unzip it.
2. Copy the folder into your assistant's skills directory
   (e.g. `~/.agents/skills/lorekeeper/`, `~/.claude/skills/lorekeeper/`, or your assistant's documented
   skill location — see INSTALL.md for the list).
3. Restart the assistant (or reload skills).
4. Ask: *"what do you know about me?"* — a working install will say it has no profile yet and offer to start one.

Supported: **Windows, macOS, Linux**. Mobile assistants: not supported (their skill loading differs).

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

## What is different from “just having a memory file”?

| | Plain memory note | Prompt template | **lorekeeper** |
|:---|:---:|:---:|:---:|
| Remembers your preferences | ✅ | ❌ | ✅ (small, editable profile; never re-asks) |
| **Gets stronger over time** | ❌ | ❌ | ✅ **writes its own task packs** |
| Anti-hallucination rules | ❌ | ❌ | ✅ evidence + confidence labels; test before spending |
| Anti-slacking rules | ❌ | ❌ | ✅ plan, per-step checks, no faked tests, leftovers listed |
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

**Does it need any specific assistant?** No. It is a plain `SKILL.md` folder with Markdown files —
it works with assistants that load skills from a directory.

**Does it require an internet connection?** Only for the "find better tools" search step.
Everything else is local.

**Will it install things behind my back?** No. Searching is automatic; installing always asks.

**How do I remove it?** Delete the skill folder, and optionally the memory folder
(`~/.lorekeeper/`). Nothing else is touched.

**Does it store my API keys?** No.

---

## Contributing

This project is **download-and-use only**. The source is published so people can read and trust it,
not to accept modifications. Improper use (re-uploading, redistributing, selling, or claiming it as
your own) is not permitted — see [LICENSE](LICENSE).

Bug reports and suggestions are welcome in the issues.

---

## Licence

**All rights reserved.** You may download and use this skill. You may not modify and redistribute it,
or present it as your own work. See [LICENSE](LICENSE).

---

## Author

Built by [@a42599-blip](https://github.com/a42599-blip).
Other work: <https://scefo.com>

---

## 中文說明

**越用越懂你，越用越聰明。**

`lorekeeper`（中譯：**守知者**）是一份可以放進各種 AI 助手的技能，讓它：

- **慢慢懂你**：把你的習慣、偏好、規矩記下來，不用每次重講
- **不再亂講**：每個結論都要有證據，沒證據就說「還不確定」，不准給自信的錯誤答案
- **不再擺爛**：先計畫、切成步驟、每一步都驗證、不假裝測過，最後列出沒做完的部分
- **自己找工具**：上網搜、做安全體檢（🟢🟡🔴）、互相比較，**要裝之前一定先問你**
- **把教訓留下來**：自己的錯、別人踩過的坑，全部寫進筆記，下次先翻筆記再判斷

**三層架構**：主技能（永遠讀、很薄）＋ 任務包（要用才讀，例如影片、簡報）＋ 記憶（只存在你自己的電腦）。

**它會自己變強（自我進化迴圈）**：做任務 → 記錄教訓（自己的＋別人的）→ **把這次的做法寫成一頁任務包** → 下次先翻筆記再動手。
第一次做某類任務是「工作」，做完之後技能會**自己寫出一套流程**，第二次就變快、而且不會再踩同一個坑——
這就是「越用越聰明」的意思。

**安裝**：把這個倉庫資料夾放進你的 AI 的技能目錄（詳見 `INSTALL.md`），
或直接跟你的 AI 說「幫我安裝這個技能：https://github.com/a42599-blip/lorekeeper」。
支援 Windows / macOS / Linux；手機版 AI 不支援。

**中文版**：`locales/zh-TW/SKILL.zh-TW.md`（想讓它當主檔就把那支檔案改名成 `SKILL.md`；
一個技能資料夾只能有一個 `SKILL.md`）。

**授權**：保留所有權利——**可以下載使用、可以推薦，但不能修改後再散布、不能當成自己的作品**。
