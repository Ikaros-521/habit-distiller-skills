# Habit Distiller Skills (用户协同契约守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.3.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
  <img src="https://img.shields.io/badge/Resilience-Self--Healing%20%26%20Undo-green" alt="Resilience">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.3)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**用户协同契约守护、防碎片化全景治理与高弹性自愈系统**。

它正本清源地确立了一个基本事实：**系统提炼的不是模型的自恋习惯，而是“开发者期望模型怎么干活的具体契约”**。通过零侵入伴生机制、意图分级自适应、手改自愈保护以及自然语言一键回退，实现真正人性化、鲁棒且干净的 AI 协同体验。

### 🌟 v2.3 进阶亮点与弹性机制

#### 1. 手动编辑容错与自愈 (Manual Edit Self-Healing)
- 开发者直接用记事本或 VS Code 手动修改 `habits.md` 时，随手增加的非标准格式内容绝对不会被后续的 AI 提炼覆盖冲刷；
- AI 下次读取时**智能吸纳并宽容解析**，自动在下一次保存时将其规范化归入合适的领域插槽，100% 保护人工手写成果。

#### 2. 自然语言一键撤回 (Natural Language Undo)
- 对刚才提炼或合并的结果不满意？直接对 AI 说一句：
  > “撤回刚才的习惯更新” 或 “恢复上一版习惯”
- AI 自动利用写前镜像 `habits.md.bak` 进行物理原子回退，秒级吃下“后悔药”。

#### 3. 规则冲突并排对比自选 (Side-by-Side Conflict Resolution)
- 遇到个人习惯与团队规范（`CLAUDE.md`）冲突时，AI 严禁擅自做主，以并排表格清晰列出冲突项，提供：
  - `[1]` 以项目规范为准；
  - `[2]` 坚持个人习惯；
  - `[3]` 智能折中兼容（如：代码英文、对话交付中文）。

#### 4. 长会话低噪音提炼模式 (Low-Noise Compact Diff)
- 在日常代码编写中触发提炼时，聊天主窗口仅输出 3 行紧凑结论，详细治理 Diff 自动折叠至 `<details>` 面板，绝不刷屏干扰思路。

#### 5. 弱模型兼容机制：“单一真相源双层视图” (Single Source, Dual View)
- 针对本地量化小模型（如 7B/1.5B 等弱推理模型），系统避免冗余维护两套数据造成同步脱节，而是采用**动态视图降级**：
  - `habits.md` 存储结构化的完整主数据；
  - 遇到轻量模型时动态滤除冗余图表和长解释，仅注入**每条不超 20 字的紧凑 Checklist 原子原语**，确保小模型高遵从率、零幻觉。

---

### 🚀 安装与分发

```bash
# 全局挂载 (所有支持 skills 的 AI IDE 通用)
npx skills add Ikaros-521/habit-distiller-skills -g
```

---

## 🇺🇸 English Documentation

**Habit Distiller Skills (v2.3)** is a zero-intrusion, portable work-contract guardian and resilient governance system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

### 🌟 New in v2.3: Resilience & Fault Tolerance

1. **Manual Edit Fault-Tolerance & Self-Healing**: Hand-written lines in `habits.md` are never discarded. The agent gracefully absorbs and reformats them into standard domain slots on subsequent runs.
2. **Natural Language Undo**: Revert recent modifications instantly by saying: *"Undo recent habit update"* (restores from `habits.md.bak`).
3. **Side-by-Side Conflict Resolution**: Compares conflicting rules in an interactive table (`Project Priority`, `Personal Priority`, or `Smart Compromise`).
4. **Low-Noise Compact Mode**: Keeps chat clean during long coding workflows by folding verbose diff reports into collapsible sections.
5. **Small Model Adaptation (Single Source, Dual View)**: Dynamically projects rich markdown into lightweight 20-word checklists for resource-constrained 7B/1.5B local models.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
