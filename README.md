# Habit Distiller Skills (零侵入全局伴生习惯守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.0.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
  <img src="https://img.shields.io/badge/Architecture-6--Pillar%20Governance-orange" alt="Governance Architecture">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**零侵入全局伴生习惯守护与防熵增全景治理框架**。

遵循 **第一性原理** 与 **KISS 原则**，它不仅消除了人机协同中的“反复纠偏”与“类似 Hermes 规则膨胀冲突”，还彻底杜绝侵入式修改任何项目代码库。通过内置的 **六大进阶治理支柱**，让 AI 既懂你的习惯，又绝不越界。

### 🌟 六大进阶治理支柱 (The 6 Pillars of Governance)

```mermaid
graph TD
    subgraph 运行态防线 (Runtime Protection)
        A1["1. 规则冲突智能仲裁 (用户卡片决策)"]
        A2["2. 跨沙箱路径级联解析 (环境变量 -> 家目录 -> 本地降级)"]
        A3["3. 主动纠偏感知探针 (同类纠偏 >= 2 次主动提醒)"]
    end

    subgraph 提炼态防线 (Distillation Integrity)
        B1["4. 约束保真合并原则 (指标参数 100% 保留，防空洞化)"]
        B2["5. 红线禁忌专属插槽 (Domain: Forbidden 顶级阻断)"]
        B3["6. 写前原子备份与版本化 (habits.md.bak 容灾)"]
    end

    A1 & A2 & A3 --> Habits["单一真相源 (~/.habit-distiller/habits.md)"]
    B1 & B2 & B3 --> Habits
```

#### 1. 规则冲突智能仲裁与交互反馈 (Conflict Arbitration)
- **痛点**：当个人习惯（如中文交流）与当前团队项目规则（如团队 `CLAUDE.md` 强制要求英文注释）互斥时，传统方案会导致 AI 认知混乱。
- **解法**：AI 严禁盲目覆盖，主动向用户抛出三选一决策卡片：
  - `[1] 临时策略`：仅当前会话单次豁免，遵从项目规范；
  - `[2] 持久策略`：自动为个人习惯追加“项目硬性规范优先”长期例外；
  - `[3] 强制习惯`：坚持个人偏好。

#### 2. 跨沙箱环境级联解析 (Cascade Path Resolution)
自动适配本地环境、Docker 容器、远程 SSH 与 GitHub Codespaces：
`$HABIT_DISTILLER_PATH` 环境变量优先 $\to$ `~/.habit-distiller/habits.md` $\to$ 当前工程 `./.agents/habits.md` 本地私有降级 $\to$ 内存内置预设。

#### 3. 约束保真合并原则 (Constraint Preservation)
同类合并时，**严禁抽象泛化为空洞套话**。子规则中的量化指标（如“行数 $\le 50$”、“单测覆盖”、“无 warning”）、判定边界与命令，必须以子列表项 100% 原样无损保留。

#### 4. 红线禁忌专属插槽 (`[DOMAIN: FORBIDDEN]`)
专门承载绝对禁止的反模式、安全底线（如严禁未经许可引入新大型依赖、严禁删除原作者注释、严禁硬编码密钥），大模型面对负向红线具备最高拦截遵从度。

#### 5. 写前原子备份与容灾 (Atomic Pre-write Backup)
任何更新前自动生成 `habits.md.bak` 物理镜像，头部记录版本自增元数据，杜绝网络波动或模型幻觉导致规则库损毁。

#### 6. 主动纠偏感知探针 (Proactive Distillation Probe)
- **运行机制**：**默认开启**。当 AI 在同一会话中检测到用户针对同一问题模式发生 $\ge 2$ 次纠正纠偏时，AI 在修复完成后会主动探询：*“检测到您多次指导【代码规范】，是否将其沉淀进您的习惯库？”*
- **Token 考量与免打扰**：虽然探针会带来极其微量的上下文分析 Token，但能避免未来几十轮对话反复纠偏产生的高达数万 Token 的返工开销。若您需要临时静音，只需在对话中发送 **“禁用主动习惯探针”** 即可。

---

### 🗂️ 六维领域插槽 (Domain Taxonomy)

全局规则始终收敛在 5~8 条黄金原子原则，分类如下：
1. 🧠 **`[DOMAIN: COGNITION]` 认知推演与设计前瞻**：主动多想 1~2 步，推演潜在缺陷与生命周期盲区；
2. 🛡️ **`[DOMAIN: DEFECT]` 缺陷修复与防线规范**：连带确凿缺陷无破坏一并彻底修复；
3. 📡 **`[DOMAIN: PROGRESS]` 运行过程可观测性**：长流程或批处理时输出步骤心跳微反馈；
4. 📊 **`[DOMAIN: DELIVERY]` 终态交付展示规范**：双轨看板、Before/After 对照表；
5. 🌐 **`[DOMAIN: DOCS]` 工程资产与文档规范**：面向公开项目，文档默认中英双语、中文置顶；
6. 🚫 **`[DOMAIN: FORBIDDEN]` 红线禁忌与反模式**：高危行为与恶习强行阻断。

---

### 🚀 安装与分发

```bash
# 全局挂载 (所有支持 skills 的 AI IDE 通用)
npx skills add Ikaros-521/habit-distiller-skills -g
```

---

## 🇺🇸 English Documentation

**Habit Distiller Skills (v2.0)** is a zero-intrusion, sidecar habit management and anti-entropy governance system built for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

It solves recurring alignment friction and the notorious "Hermes fragmentation bloat" while strictly guaranteeing **0% code pollution to project repositories**.

### 🌟 The 6 Pillars of Governance

1. **Conflict Arbitration**: Interactive decision prompts (`Session-Only`, `Habit Exception`, or `Force Habit`) when personal habits clash with project-level `CLAUDE.md`.
2. **Cascade Path Resolution**: Seamless fallback: `$HABIT_DISTILLER_PATH` $\to$ `~/.habit-distiller/habits.md` $\to$ `./.agents/habits.md` (containers / remote SSH) $\to$ memory presets.
3. **Constraint Preservation**: Merging keeps explicit numbers, metrics, and criteria intact in sub-bullets, preventing rules from degrading into vague empty slogans.
4. **Forbidden Domain (`[DOMAIN: FORBIDDEN]`)**: Highest-priority red-line guardrails against antipatterns and hazardous mutations.
5. **Atomic Pre-write Backup**: Generates `habits.md.bak` snapshots and metadata headers before any write operation.
6. **Proactive Distillation Probe (Default ON)**:
   - Automatically prompts to persist rules when $\ge 2$ consecutive user corrections occur on the same pattern.
   - **Token Economy**: Saves thousands of rework tokens over time. Can be silenced anytime by saying *"disable proactive probe"*.

### 🗂️ Six Fixed Domain Slots
1. 🧠 **COGNITION**: Proactive Blind-Spot & Lifecycle Exploration.
2. 🛡️ **DEFECT**: Chain Collateral Defect Sweep.
3. 📡 **PROGRESS**: Observable In-Flight Heartbeat Feedback.
4. 📊 **DELIVERY**: Dual-Track Before/After Dashboards & Artifacts.
5. 🌐 **DOCS**: Symmetrical Bilingual Open-Source Docs (Chinese Default).
6. 🚫 **FORBIDDEN**: Anti-Patterns and Destructive Behavior Guardrails.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
