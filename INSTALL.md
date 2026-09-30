# Install lorekeeper

**One minute. Pick ONE of the three ways below.** You do not need git, Python, or Node.

| Who you are | Start here |
|:---|:---|
| 🤖 **An AI assistant** (Claude Code, Cursor, Codex, pi, …) | **[AGENTS.md](AGENTS.md)** — machine-readable install steps, required end state, verification, hard constraints |
| 👤 **A person** | Read on. Not sure? Use **Way 1**. |

> Not sure which way? Use **Way 1**. It is one sentence, pasted into your AI.
> Or just paste this whole page to your AI and say *"install this for me."*
> (Way 3's ZIP also contains `AGENTS.md`, so an AI that opens the unzipped folder knows what to do.)

---

## Way 1 — Let your AI install it (easiest, no terminal) ⭐

Open your AI assistant and paste this:

```
Install the skill at https://github.com/a42599-blip/lorekeeper for yourself,
then start using it.
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

The installer downloads the skill and copies the folder into your assistant's skills
directory. It **only copies** — nothing else on your computer is changed.

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

## Localised install notes

**安裝說明（繁體中文）**：三種方法都一樣簡單，選一種就好——
1. **最簡單**：把這句貼給你的 AI：`幫我安裝 https://github.com/a42599-blip/lorekeeper 這個技能，然後開始用它。`
2. **一行指令**：Windows 開 PowerShell 貼上面那行 `irm ... | iex`；Mac／Linux 開終端機貼 `curl ... | bash`。
3. **完全不用指令**：下載 ZIP → 解壓 → 把資料夾改名成 `lorekeeper` → 放進你 AI 的技能資料夾（不知道放哪就問它「你從哪個資料夾讀技能？」）→ 重開 AI。
> 看不懂沒關係：**把這一頁整份貼給你的 AI，叫它幫你裝**就好。
> 🤖 **如果你是 AI**：請直接讀 [`AGENTS.md`](AGENTS.md)，裡面有機器看得懂的安裝步驟與驗證方法。

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
