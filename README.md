# Habit Distiller Skills (用户协同契约守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.3.1-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
  <img src="https://img.shields.io/badge/Cold%20Start%20Tokens-%3C60-brightgreen" alt="Token Efficient">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.3.1)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**用户协同契约守护、防碎片化全景治理与高弹性自愈系统**。

它正本清源地确立了一个基本事实：**系统提炼的不是模型的自恋习惯，而是“开发者期望模型怎么干活的具体契约”**。通过零侵入伴生机制、意图分级自适应、手改自愈保护以及结构化履约自审，实现真正人性化、鲁棒且干净的 AI 协同体验。

### 🌟 核心工程机制与防遗漏设计

#### 1. 结构化输出契约防漏自审 (Schema-Enforced Audit)
- **痛点破解**：针对“如果只让大模型内心默念自审，大模型注意力漂移时连自审也会遗忘”的问题，本系统将习惯履约核查**直接物理固化为终态看板的必填表格单元格**（`| **习惯契约核验** | 🛡️ [连带清零已核查 / 过程反馈已贯穿] |`）。大模型在填充表格时必须强制触发注意力核验，彻底杜绝遗漏。

#### 2. 超低冷启动 Token 开销 (Ultra-Low Token Footprint)
- 将全局挂载的 YAML 技能描述压缩至 60 Token 以内极简签名，在技能闲置或常规对话时**产生极其微弱的底噪**，核心协议全部延迟到运行时按需自适应激活。

#### 3. 自然语言一键撤回 (Natural Language Undo)
- 对刚才提炼或合并的结果不满意？直接对 AI 说一句：
  > “撤回刚才的习惯更新” 或 “恢复上一版习惯”
- AI 自动利用写前镜像 `habits.md.bak` 进行物理原子回退，秒级吃下“后悔药”。

#### 4. 手动编辑容错与自愈 (Manual Edit Self-Healing)
- 开发者用记事本或编辑器手工在 `habits.md` 随手加的非标准文字绝对不被 AI 抹杀。AI 宽容读取，并在下一次保存时智能归纳吸纳进合适领域插槽并规范化。

#### 5. 子代理敏捷协同关系 (Subagent Coordination)
- 子代理默认不强制盲目注入全量习惯库，保持轻量；主 Agent 在派生任务提示词中自然传达偏好，并由主 Agent 最终负责交付把关，不搞多层嵌套的过度工程化。

---

### 🚀 安装与分发

```bash
# 全局挂载 (所有支持 skills 的 AI IDE 通用)
npx skills add Ikaros-521/habit-distiller-skills -g
```

---

## 🇺🇸 English Documentation

**Habit Distiller Skills (v2.3.1)** is a zero-intrusion, portable work-contract guardian and resilient governance system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

### 🌟 Highlights & Refinements

1. **Schema-Enforced Self-Audit**: Solves the "model forgets to self-audit" flaw by physically anchoring habit compliance into required summary table cells (`| Habit Contract Audit | Verified |`). The model cannot complete the table without validating compliance.
2. **Ultra-Low Cold-Start Footprint**: Compact YAML signature consumes <60 tokens when idle. Full protocols expand strictly on-demand.
3. **Natural Language Undo**: Revert modifications instantly by saying: *"Undo recent habit update"*.
4. **Manual Edit Self-Healing**: Hand-written lines in `habits.md` are never overwritten or deleted.
5. **Pragmatic Subagent Orchestration**: Keeps subagents lightweight without forced injection; the supervising main agent frames expectations and reviews code.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
