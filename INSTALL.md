# INSTALL — installing `lorekeeper`

Works on **Windows, macOS and Linux**. Mobile assistants are not supported
(they load skills differently).

There are two methods. Method A is for people who just want it to work;
Method B is for people who like to see the files.

---

## Method A — let your assistant install it (recommended)

Open your AI assistant and paste:

```
Install the lorekeeper skill for yourself, then start using it.
Source: https://github.com/a42599-blip/lorekeeper
```

The assistant will copy the folder into its own skills directory and reload.
Afterwards, ask it:

```
What do you know about me?
```

A working install answers: *"I don't have a profile for you yet — want to start one?"*

---

## Method B — do it manually

### 1. Get the files

- **Download ZIP**: on the repository page → `Code` → `Download ZIP`, then unzip, **or**
- **Git**: `git clone https://github.com/a42599-blip/lorekeeper.git`

### 2. Find your assistant's skills directory

Different assistants look in different places. Common locations:

| Assistant family | Typical location |
|:---|:---|
| Agent-Skills compatible tools (incl. pi) | `~/.agents/skills/` (macOS/Linux) or `C:\Users\<you>\.agents\skills\` (Windows) |
| Claude Code | `~/.claude/skills/` |
| Project-local (any tool) | `<your-project>/.agents/skills/` |

If you are unsure, **ask your assistant**: *"which directory do you load skills from?"* — that is a
legitimate question and it will tell you.

### 3. Copy the folder

The folder must be named `lorekeeper` and must contain `SKILL.md` at its top level:

```
<skills directory>/
└── lorekeeper/
    ├── SKILL.md
    ├── README.md
    ├── INSTALL.md
    ├── LICENSE
    ├── references/
    └── tasks/
```

### 4. Reload

Restart the assistant, or use its reload command (for example `/reload`).

### 5. Verify

Ask: *"What do you know about me?"*
Then: *"Start keeping notes about how I like to work."*

---

## One-line installers (optional)

If you prefer a terminal:

**macOS / Linux**

```bash
curl -fsSL https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.sh | bash
```

**Windows (PowerShell)**

```powershell
irm https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.ps1 | iex
```

Both scripts only copy the `lorekeeper` folder into your skills directory.
They do not modify anything else. Read them before running — that is good practice everywhere.

---

## Where does it keep its memory?

The skill creates a memory folder the first time it needs one:

```
~/.lorekeeper/
├── owner.md
├── lessons.md
└── skills.md
```

Nothing is uploaded anywhere. Delete the folder to erase everything it has learned.

---

## Troubleshooting

| Problem | Cause | Fix |
|:---|:---|:---|
| The assistant does not mention the skill | Skill not in a directory it scans | Ask it where it loads skills from, and copy the folder there |
| "SKILL.md not found" | The folder is nested one level too deep | The folder you copied must contain `SKILL.md` directly |
| Skill listed but unused | Skills usually load by description match | Say explicitly: *"use the lorekeeper skill for this"* |
| Nothing is remembered between chats | The memory folder was not created, or you are on a different machine | Check that `~/.lorekeeper/` exists; memory is per machine |
| You want it gone | — | Delete the skill folder, and optionally `~/.lorekeeper/` |

---

## Uninstall

1. Delete the skill folder.
2. Optionally delete `~/.lorekeeper/` (this removes everything it learned).

Nothing else is touched — there are no system changes, no services, no background processes.
