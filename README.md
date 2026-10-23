# Habit Distiller Skills (AI 对话习惯提炼与全生态规则管理框架)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
  <img src="https://img.shields.io/badge/Architecture-Decoupled%20%26%20Private-orange" alt="Architecture">
  <img src="https://img.shields.io/badge/IDE%20Adapters-11%2B%20Supported-purple" alt="Supported IDEs">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills** 是一个面向现代主流 AI 编程助手（AI IDEs）的**通用习惯提炼、规则固化与跨平台分发框架**。

遵循 **第一性原理** 与 **KISS 原则**，它将人机协作中的“反复纠偏”与“返工痛点”逆向转化为可执行的原子规则。系统采用**“引擎、预设、模板、私有数据”四层彻底解耦设计**，确保公共代码纯粹通用的同时，开发者个人的私有指令与偏好完全保存在本地，绝不上云。

### 🏗️ 解耦架构与隐私保护

```mermaid
graph TD
    subgraph 开源公开仓库 (Public Repo)
        A["1. 提炼引擎 (core/): 4D 习惯逆向提炼元提示词"]
        B["2. 推荐预设库 (presets/): 可插拔通用工程规范"]
        C["3. IDE 适配模板 (adapters/): 11+ 款 AI IDE 纯净插槽"]
        D["4. 虚构示范案例 (examples/): 通用教学用例"]
    end

    subgraph 本地私有隔离 (Local Private, Git-Ignored)
        E["个人配置 (profiles/ 或 本机全局配置 ~/.gemini/GEMINI.md)"]
    end

    A --> E
    B --> E
    E --> C
```

1. **引擎核心 (`core/`)**：通用的分析 SOP，通过缺陷溯源、工程倾向、过程反馈、终态形式四个维度归纳习惯。
2. **模块化预设库 (`presets/`)**：内置开箱即用的通用工程最佳实践，按需自由挂载：
   - 🛡️ `presets/bug-sweep.md`：连锁确凿缺陷清零协议
   - 📡 `presets/observable-progress.md`：运行过程微反馈与可观测性协议
   - 🌐 `presets/bilingual-docs.md`：开源公开项目双语文档规范
   - 📊 `presets/delivery-dashboard.md`：双轨高可读性交付看板
3. **IDE 适配模板 (`adapters/`)**：覆盖 11+ 款主流 AI IDE 的标准插槽模板。
4. **本地私有隔离 (`profiles/`)**：强制通过 `.gitignore` 隔离，开发者个人的私有口令、项目专有指令仅留存在本机。

### 💻 全生态 IDE 适配支持表

| AI IDE / Agent | 适配规则生效路径 | 适用场景 |
| :--- | :--- | :--- |
| **Trae (字节跳动)** | `.trae/rules.md` / `.traerules` | Trae 原生工程规则注入 |
| **dsh (DeepSeek)** | `DSH.md` / `.dsh/rules.md` | DeepSeek CLI 命令行代理 |
| **OpenCode** | `OPENCODE.md` / `.opencode/rules.md` | OpenCode 开源协同智能体 |
| **Pi (Inflection)** | `PI.md` / `.pi/rules.md` | Pi 个人助手与对话终端 |
| **Claude Code** | `CLAUDE.md` / `~/.claude/CLAUDE.md` | Anthropic Claude Code 官方命令行 |
| **Antigravity / Gemini** | `~/.gemini/GEMINI.md` / `AGENTS.md` | Google Antigravity & Gemini CLI |
| **Cursor** | `.cursorrules` / `.cursor/rules/*.mdc` | Cursor 规则库 |
| **Windsurf (Cascade)** | `.windsurfrules` | Codeium Windsurf 智能助手 |
| **ZCode** | `.zcode/rules.md` / `ZCODE.md` | ZCode 开发环境 |
| **Qoder** | `.qoderules` / `.qoder/rules.md` | Qoder 智能辅助系统 |
| **Codex / Copilot** | `.github/copilot-instructions.md` | GitHub Copilot / OpenAI Codex |

### 🚀 安装与分发指南

#### 方式一：使用 Vercel `skills` CLI（推荐）
完全兼容标准 Agent Skill 规范，可直接通过 `skills` 管理工具一键添加：

```bash
# 全局安装 (所有支持 skills 的 Agent 通用)
npx skills add Ikaros-521/habit-distiller-skills -g

# 安装到当前项目
npx skills add Ikaros-521/habit-distiller-skills
```

#### 方式二：使用本地一键分发脚本
克隆本仓库后，使用内置脚本快速分发：

```powershell
# 同步到全局 Antigravity / Gemini
.\scripts\sync.ps1 -Target global-gemini

# 同步全量规则到任意具体项目工程 (自动生成 Trae, dsh, Claude, Cursor, ZCode, Qoder 等配置)
.\scripts\sync.ps1 -Target project -ProjectPath "F:\your-target-project"
```

### 🛠️ 如何触发习惯提炼？

当您在使用任何已配置的 AI IDE 时：
- **触发方式**：在对话中直接发送：
  > “提炼刚才的对话习惯” 或 “分析我们刚才为什么返工并沉淀规则”
- AI 会自动调用 `habit-distiller`，审查近几轮历史消息，形成规范条目，并在征得您的同意后直接更新对应规则文件。

---

## 🇺🇸 English Documentation

**Habit Distiller Skills** is a universal framework for developer habit extraction, rule consolidation, and cross-IDE distribution.

Grounded in **First Principles** and the **KISS Principle**, it converts friction and rework in AI pair-programming into actionable, unambiguous rules. Built with a **decoupled 4-layer architecture** (Engine, Presets, Adapters, and Local Private Data), it guarantees zero personal data leaks to public repositories while keeping local configurations highly personalized.

### 🏗️ Decoupled Architecture & Privacy First

1. **Extraction Engine (`core/`)**: Generic meta-prompts that analyze dialog context across 4 dimensions: anti-patterns, engineering habits, interaction feedback, and delivery formats.
2. **Modular Presets (`presets/`)**: Battle-tested, plug-and-play engineering standards:
   - 🛡️ `presets/bug-sweep.md`: Chain Defect Sweep Protocol
   - 📡 `presets/observable-progress.md`: Observable In-Flight Feedback Protocol
   - 🌐 `presets/bilingual-docs.md`: Open-Source Bilingual Documentation Protocol
   - 📊 `presets/delivery-dashboard.md`: Dual-Track Structured Delivery Protocol
3. **IDE Adapters (`adapters/`)**: Clean slot templates for 11+ mainstream AI IDEs.
4. **Local Private Isolation (`profiles/`)**: Strictly git-ignored; user-specific custom instructions and sensitive preferences reside solely on the local machine.

### 💻 Supported AI IDE Matrix

| AI IDE / Agent | Configuration File | Target Location / Usage |
| :--- | :--- | :--- |
| **Trae (ByteDance)** | `.trae/rules.md` / `.traerules` | Trae native project rules |
| **dsh (DeepSeek)** | `DSH.md` / `.dsh/rules.md` | DeepSeek CLI agent rules |
| **OpenCode** | `OPENCODE.md` / `.opencode/rules.md` | OpenCode open agent platform |
| **Pi (Inflection)** | `PI.md` / `.pi/rules.md` | Pi terminal & CLI rules |
| **Claude Code** | `CLAUDE.md` / `~/.claude/CLAUDE.md` | Anthropic Claude Code official CLI |
| **Antigravity / Gemini** | `~/.gemini/GEMINI.md` / `AGENTS.md` | Google Antigravity & Gemini CLI |
| **Cursor** | `.cursorrules` / `.cursor/rules/*.mdc` | Cursor project guidelines |
| **Windsurf (Cascade)** | `.windsurfrules` | Codeium Windsurf Cascade rules |
| **ZCode** | `.zcode/rules.md` / `ZCODE.md` | ZCode agent environment |
| **Qoder** | `.qoderules` / `.qoder/rules.md` | Qoder assistant guidelines |
| **Codex / Copilot** | `.github/copilot-instructions.md` | GitHub Copilot / OpenAI Codex |

### 🚀 Installation & Sync

#### Method 1: Via Vercel `skills` CLI (Recommended)
```bash
# Global installation (for any agent supporting skills)
npx skills add Ikaros-521/habit-distiller-skills -g

# Local installation (current project)
npx skills add Ikaros-521/habit-distiller-skills
```

#### Method 2: Via Local Dispatch Scripts
```powershell
# Sync to global Antigravity / Gemini
.\scripts\sync.ps1 -Target global-gemini

# Dispatch all rules to a specific project workspace
.\scripts\sync.ps1 -Target project -ProjectPath "F:\your-target-project"
```

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
