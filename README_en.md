# Habit Distiller Skills (Work-Contract Guardian & Habit Distillation - Lightweight Edition)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Design-KISS%20%26%20Zero%20Pollution-blue" alt="KISS">
  <img src="https://img.shields.io/badge/Branch-Lightweight-orange" alt="Lightweight">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
</p>

[**中文文档 (Chinese)**](README.md) | [🚩 **Main Branch (Full Featured)**](https://github.com/Ikaros-521/habit-distiller-skills/tree/main)

---

## 🇺🇸 Overview

**Habit Distiller Skills (Lightweight Edition)** is a zero-pollution AI agent skill designed to **help developers distill and enforce personal pair-programming habits** across modern AI IDEs (Trae, Claude Code, Cursor, Antigravity, etc.).

### 🎯 Core Purpose: Assist Distillation, Zero Over-Engineering

Instead of endlessly repeating the same instructions across chats, Habit Distiller catches your workflow corrections, crystallizes them into clear, actionable work contracts, and saves them locally to `~/.habit-distiller/habits.md`.

- **Zero Codebase Pollution**: Habits reside strictly in your user home directory, never altering project repositories.
- **Human-in-the-Loop**: AI always drafts the rule and asks for your confirmation before persisting.
- **Instant Rollback**: Pre-write `.bak` backups allow one-phrase undo anytime.
- **KISS & Lean**: Maintains 5~8 golden rules total, keeping prompt overhead tiny and models responsive.

---

### 💬 Natural Language Commands

- **Distill**: Say *"Distill my habit: ... "* or *"Extract our working habit from this fix"*.
- **List**: Say *"List my habits"* or *"Show habit scorecard"*.
- **Delete**: Say *"Delete habit [name]"*.
- **Undo**: Say *"Undo last habit update"*.

---

### 🚀 Installation & Shell Management

#### Global Installation
```bash
# Install Lightweight Edition
npx skills add Ikaros-521/habit-distiller-skills#lightweight -g

# Install Full-Featured Edition
npx skills add Ikaros-521/habit-distiller-skills -g
```

#### Portable Scripts
```powershell
# Windows PowerShell
.\scripts\sync.ps1 -Target install-global                    # Install & mount globally
.\scripts\sync.ps1 -Target export -FilePath .\my-habits.md   # Export active habits
.\scripts\sync.ps1 -Target import -FilePath .\my-habits.md   # Import habits
```

```bash
# macOS / Linux Bash
./scripts/sync.sh install-global                             # Install & mount globally
./scripts/sync.sh export ./my-habits.md                      # Export active habits
./scripts/sync.sh import ./my-habits.md                      # Import habits
```

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
