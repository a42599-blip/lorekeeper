# Install lorekeeper

> 👉 **中文版安裝說明在下面：<a href="#zh-install">點這裡直接跳到中文版</a>**（這一條是給中文使用者的提示，英文版在最上面）

**One minute. Pick ONE of the three ways below.** You do not need git, Python or Node.

| Who you are | Start here |
|:---|:---|
| 🤖 **An AI assistant** (Claude Code, Cursor, Codex, pi, …) | **[AGENTS.md](AGENTS.md)** — machine-readable install steps, required end state, verification, hard constraints |
| 👤 **A person** | Read on. Not sure? Use **Way 1**. |

> Or just paste this whole page to your AI and say *"install this for me."*
> (Way 3's ZIP also contains `AGENTS.md`, so an AI that opens the unzipped folder knows what to do.)

---

## Way 1 — Let your AI install it (easiest, no terminal)

Open your AI assistant and paste this:

```
Install the skill at https://github.com/a42599-blip/lorekeeper for yourself, then start using it.
```

Then **restart the assistant** (or reload skills). Done.

**How to check it worked:** ask

```
What do you know about me?
```

A working install replies: *"I don't have a profile for you yet — want to start one?"*

---

## Way 2 — One line in the terminal

**Windows** — open PowerShell (press `Win`, type `powershell`, Enter) and paste:

```powershell
irm https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.ps1 | iex
```

**macOS / Linux** — open Terminal and paste:

```bash
curl -fsSL https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.sh | bash
```

The installer downloads the skill and copies the folder into your assistant's skills directory.
It **only copies** — nothing else on your computer is changed.

Want it somewhere else? Set the target first:

```powershell
$env:SKILLS_DIR = "D:\my\skills"     # Windows
```

```bash
export SKILLS_DIR="/my/skills"       # macOS / Linux
```

---

## Way 3 — No terminal at all (download and copy)

1. On the repository page, click the green **Code** button → **Download ZIP**.
2. Unzip it. You get a folder named `lorekeeper-main` — rename it to **`lorekeeper`**.
3. Find where your assistant loads skills from — just ask it:
   *"which folder do you load skills from?"*
   Common answers: `~/.agents/skills/` (Windows: `C:\Users\<you>\.agents\skills\`) or `~/.claude/skills/`.
4. Move the `lorekeeper` folder into that directory.
   The result must look like this — `SKILL.md` at the top of the folder:

   ```
   <skills directory>/
   └── lorekeeper/
       ├── SKILL.md      ← must be here
       ├── README.md
       ├── references/
       └── tasks/
   ```
5. Restart the assistant (or run its reload command, e.g. `/reload`).

---

## Where does it keep what it learns?

It creates a small memory folder the first time it needs one:

```
~/.lorekeeper/          (Windows: C:\Users\<you>\.lorekeeper\)
├── owner.md      how you like to work
├── lessons.md    every lesson learned
└── skills.md     installed tools + comparisons
```

Nothing is uploaded anywhere. To wipe everything it learned, delete that folder.

---

## Troubleshooting

| Problem | Cause | Fix |
|:---|:---|:---|
| `irm`/`curl` says the command is not found | Very old system | Use **Way 1** or **Way 3** |
| The assistant never mentions the skill | The folder is not in a place it scans | Ask it *"which folder do you load skills from?"* and put the folder there |
| "SKILL.md not found" | The folder is nested one level too deep | The `lorekeeper` folder must contain `SKILL.md` directly |
| Listed but never used | Skills load by description match | Say *"use the lorekeeper skill for this"* |
| Nothing is remembered between chats | The memory folder was not created, or you are on another machine | Check `~/.lorekeeper/` exists; memory is per machine |
| Installed an update, still the old behaviour | The assistant caches skills | Restart it, or run `/reload` |

---

## Uninstall

1. Delete the skill folder (the `lorekeeper` folder you installed).
2. Optionally delete `~/.lorekeeper/` (this removes everything it learned).

No services, no background processes, no system changes to undo.

---

<a id="zh-install"></a>

# 中文版安裝說明（完整）

> 👉 English version is above: **[click here to jump back up](#install-lorekeeper)**

**一分鐘就好。下面三種方法選一種。** 不用 git、不用 Python、不用 Node。

| 你是誰 | 從哪裡開始 |
|:---|:---|
| 🤖 **AI 助手**（Claude Code、Cursor、Codex、pi…） | **[AGENTS.md](AGENTS.md)** — 機器看的安裝步驟、必須達成的最終狀態、驗證方法、不准做什麼 |
| 👤 **人** | 繼續往下看。不確定就用**方法 1**。 |

> 或者更簡單：**把這一整頁貼給你的 AI，叫它「幫我裝」**就好。
> （方法 3 的 ZIP 裡面也有 `AGENTS.md`，所以 AI 打開解壓後的資料夾也知道該怎麼做。）

---

## 方法 1 — 叫你的 AI 幫你裝（最簡單，不用指令）

打開你的 AI 助手，貼這一句：

```
幫我安裝這個技能，然後開始用它：
https://github.com/a42599-blip/lorekeeper
```

然後**重開 AI**（或重新載入技能）。完成。

**怎麼確認裝好了**：問它

```
你記得我什麼？
```

正常的話它會回答：「**我目前還沒有你的資料，要開始建立一份嗎？**」

---

## 方法 2 — 貼一行指令

**Windows** — 按 `Win`、輸入 `powershell`、Enter，然後貼上：

```powershell
irm https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.ps1 | iex
```

**macOS／Linux** — 打開終端機（Terminal），貼上：

```bash
curl -fsSL https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.sh | bash
```

安裝程式會下載這個技能，並把資料夾複製到你 AI 的技能目錄。
它**只做複製**——你電腦上其他東西都不會被改動。

想裝到別的位置？先設定目標路徑：

```powershell
$env:SKILLS_DIR = "D:\我的\技能資料夾"     # Windows
```

```bash
export SKILLS_DIR="/我的/技能資料夾"       # macOS / Linux
```

---

## 方法 3 — 完全不用指令（下載後複製）

1. 在倉庫頁面點綠色的 **Code** → **Download ZIP**。
2. 解壓縮，會得到一個叫 `lorekeeper-main` 的資料夾——**改名成 `lorekeeper`**。
3. 找出你的 AI 從哪個資料夾讀技能——直接問它：
   「**你從哪個資料夾讀技能？**」
   常見答案：`~/.agents/skills/`（Windows：`C:\Users\<你>\.agents\skills\`）或 `~/.claude/skills/`。
4. 把 `lorekeeper` 資料夾放進那個目錄。
   結果必須長這樣——`SKILL.md` 在資料夾最上層：

   ```
   <技能目錄>/
   └── lorekeeper/
       ├── SKILL.md      ← 一定要在這裡
       ├── README.md
       ├── references/
       └── tasks/
   ```
5. 重開 AI（或執行它的重新載入指令，例如 `/reload`）。

---

## 它把學到的東西存在哪？

第一次需要時，它會建立一個小小的記憶資料夾：

```
~/.lorekeeper/          （Windows：C:\Users\<你>\.lorekeeper\）
├── owner.md      你喜歡怎麼工作
├── lessons.md    學到的每一則教訓
└── skills.md     裝了哪些工具與比較紀錄
```

**不會上傳到任何地方。** 要清掉它學過的一切，刪掉那個資料夾就好。

---

## 障礙排除

| 問題 | 原因 | 怎麼修 |
|:---|:---|:---|
| `irm`／`curl` 說找不到指令 | 系統太舊 | 改用**方法 1** 或**方法 3** |
| AI 從來沒提到這個技能 | 資料夾不在它會掃描的位置 | 問它「你從哪個資料夾讀技能？」，把資料夾放到那裡 |
| 顯示「找不到 SKILL.md」 | 資料夾多包了一層 | `lorekeeper` 資料夾裡要直接有 `SKILL.md` |
| 有列出來但都不用它 | 技能是靠描述比對來觸發 | 明講：「**用 lorekeeper 這個技能**來做」 |
| 換對話就什麼都不記得 | 記憶資料夾沒建立，或你換了另一台電腦 | 確認 `~/.lorekeeper/` 存在；記憶是「每台電腦各自一份」 |
| 更新了卻還是舊行為 | AI 快取了技能 | 重開它，或執行 `/reload` |

---

## 移除

1. 刪掉技能資料夾（你裝進去的那个 `lorekeeper` 資料夾）。
2. 也可以順便刪掉 `~/.lorekeeper/`（這會清掉它學過的所有東西）。

沒有服務、沒有背景程序、沒有任何系統設定需要還原。
