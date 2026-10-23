# Habit Distiller Skills (零侵入全局伴生习惯管理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
  <img src="https://img.shields.io/badge/Architecture-Zero--Intrusion%20Sidecar-orange" alt="Architecture">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**零侵入全局伴生习惯管理与动态注入框架**。

遵循 **第一性原理** 与 **KISS 原则**，它彻底解决了人机协同中的“反复纠偏”痛点，同时**坚决杜绝侵入式修改项目代码库或篡改 IDE 原生规则文件**（如 `CLAUDE.md`、`.cursorrules`、`GEMINI.md`），保证团队 Git 提交树与项目工程 100% 纯净。

### 🌟 核心理念：为什么需要“零侵入 Sidecar 伴生架构”？

- **传统方案的弊端**：直接把个人偏好写入项目的 `CLAUDE.md` 或 `.cursorrules`，相当于把个人环境变量硬写进团队公共代码仓库，既污染团队 Git 提交，又容易引发合并冲突。
- **Sidecar 伴生机制**：
  1. **单一真相源**：所有个人偏好独立保存在开发者家目录的私有文件：`~/.habit-distiller/habits.md`；
  2. **全局共享**：只需全局安装一次 Skill，机器上所有项目、所有会话天然可见；
  3. **动态注入**：AI 会话启动或处理任务时，由 Skill 动态读取并遵守习惯，**对项目代码库 0 侵入、0 篡改**；
  4. **随装随卸**：随时停用该技能，系统无任何残留垃圾。

```mermaid
graph TD
    subgraph 开发者项目代码库 (100% 纯净保护)
        A["业务代码 / 现有 CLAUDE.md / .cursorrules / GEMINI.md"]
        A ---|"完全不碰、绝不篡改"| A1["零 Git 污染"]
    end

    subgraph 全局伴生技能层 (Sidecar Skill, 全机会话共享)
        B["全局挂载: npx skills add -g 或 ~/.agents/skills/"]
        B ---|"运行时动态感知与注入"| B1["habit-distiller"]
    end

    subgraph 独立数据层 (单一真相源)
        C["~/.habit-distiller/habits.md (用户家目录私有文件)"]
        B1 -->|"读取与追加提炼习惯"| C
    end
```

### 📦 内置四大工程最佳实践预设 (Presets)

新环境初始化时，系统自动挂载以下经过验证的通用工程规范：
- 🛡️ **缺陷连带清零 (Chain Bug Sweep)**：排查中发掘出的确凿关联 Bug，在确保零回归破坏的前提下一并彻底修复。
- 📡 **运行过程微反馈 (Observable Progress)**：多步排查、长流程批处理时输出步骤节点反馈，告别黑盒盲跑。
- 🌐 **开源双语文档规范 (Bilingual README)**：面向 GitHub 公开项目，文档默认提供中英双语，中文置顶对齐。
- 📊 **双轨高可读交付看板 (Dual-Track Delivery)**：终态汇报以结构化对比表或 IDE 原生面板呈现。

### 🚀 安装与使用

#### 1. 一键全局安装（推荐）
通过 Vercel `skills` CLI 一键全局安装，全机会话立即可用：

```bash
npx skills add Ikaros-521/habit-distiller-skills -g
```

或克隆本仓库后使用本地一键挂载脚本：
```powershell
# Windows
.\scripts\sync.ps1 -Target install-global

# Linux / macOS
./scripts/sync.sh install-global
```

#### 2. 在对话中随时提炼新习惯
在任何 AI IDE 会话中，当您觉得 AI 出现返工或您有新的开发偏好时，直接说：
> “提炼刚才的对话习惯”

AI 会自动提取无歧义规则，经您确认后**仅保存至 `~/.habit-distiller/habits.md`**，项目文件不受丝毫打扰。

---

## 🇺🇸 English Documentation

**Habit Distiller Skills** is a zero-intrusion, sidecar habit management and dynamic injection framework designed for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

Grounded in **First Principles** and the **KISS Principle**, it eliminates recurring rework and alignment friction in AI pair-programming while **strictly refraining from mutating any project-level rule files** (`CLAUDE.md`, `.cursorrules`, `GEMINI.md`). It keeps your project codebases and team Git histories 100% clean.

### 🌟 Why Zero-Intrusion Sidecar Architecture?

- **The Problem with In-Repo Rules**: Hardcoding personal preferences into a team repository's `CLAUDE.md` or `.cursorrules` pollutes the Git tree and forces personal habits onto other team members.
- **The Sidecar Solution**:
  1. **Single Source of Truth**: All distilled habits are stored in your user home directory: `~/.habit-distiller/habits.md`.
  2. **Global Sharing Across Sessions**: Install once globally, and all conversations across all projects share your habits.
  3. **Dynamic In-Session Injection**: When active, the agent reads and adheres to `habits.md` on the fly without writing a single byte to the active workspace.
  4. **Zero Leftover Footprint**: Cleanly disable or uninstall at any time without leaving garbage in project trees.

### 📦 Pre-Shipped Engineering Presets

- 🛡️ **Chain Bug Sweep**: Automatically resolve confirmed collateral defects safely without regression.
- 📡 **Observable Progress Feedback**: Emits lightweight in-flight status and step notifications during multi-step runs.
- 🌐 **Open-Source Bilingual Docs**: Mandates symmetrical bilingual READMEs (Chinese default + English) for open-source GitHub repositories.
- 📊 **Dual-Track Delivery Dashboard**: Concludes tasks with high-readability Before/After tables and IDE Artifacts.

### 🚀 Installation & Usage

#### 1. Install Globally (Recommended)
```bash
npx skills add Ikaros-521/habit-distiller-skills -g
```

Or via local dispatch scripts:
```powershell
# Windows
.\scripts\sync.ps1 -Target install-global

# Linux / macOS
./scripts/sync.sh install-global
```

#### 2. Trigger Habit Distillation Anytime
In any conversation with your AI assistant:
> *"Distill our recent dialogue habits and save them."*

The skill will analyze recent interactions, propose clear rules, and persist them **strictly into `~/.habit-distiller/habits.md`** upon your confirmation.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
