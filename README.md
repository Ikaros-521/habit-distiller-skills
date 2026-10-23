# Habit Distiller Skills (自适应习惯守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.1.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
  <img src="https://img.shields.io/badge/Adaptive%20Depth-Fast%20%26%20Deep%20Paths-orange" alt="Adaptive Paths">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.1)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**零侵入全局伴生习惯守护与自适应全景治理框架**。

遵循 **第一性原理** 与 **KISS 原则**，它彻底解决了人机协同中“反复纠偏”、“类似 Hermes 规则膨胀”以及“简单查询被重型协议拖慢”的顽疾。坚决杜绝侵入式篡改项目代码库（0% 代码污染），并在运行时实现**任务意图自适应分级**与**技术栈语境智能隔离**。

### 🌟 核心突破与创新机制

#### 1. 意图分级自适应与极速直通 (Adaptive Execution Depth)
无需开发者记忆死板口令，AI 根据当前任务的实际复杂度**自主规划响应深度**：
- ⚡ **极速直通通道 (Fast-Path Mode)**：面对单行命令速查、快速计算、概念解释等微任务，以最快速度直接给出精准干净的答案，自动豁免步骤反馈心跳、不强制出具双轨看板、不作冗长发散；
- 🛡️ **深度防线通道 (Deep-Path Mode)**：面对代码修改、工程重构、缺陷排查、架构设计等重任务，全量激活前瞻推演、步骤微反馈、缺陷连带清零与双轨看板。

#### 2. 技术栈作用域智能隔离 (Tech-Stack Scoping)
规则支持标记适用技术栈（如 `[Scope: python]` 或 `[Scope: frontend]`）。AI 在读取习惯库时，自动根据当前工程语言特征进行**静默作用域过滤**，彻底杜绝 Python 语法习惯误入 C++ 或前端工程的“语境中毒”。

#### 3. 提炼时旧习惯健康度巡检 (Habit Health & Stale Audit)
当开发者手动触发“提炼对话习惯”时，AI 不仅提炼新规则，同时对已有规则进行健康度体检，主动指出：
- 💡 *【建议优化/升维合并】*：近期多次提及但分散的同类规则；
- ⏳ *【疑似陈旧/待归档】*：针对过时环境或长期未命中的规则。

#### 4. 原子重命名并发防撕裂 (Atomic Temp-Rename)
多窗口或多 Agent 并发写入时，采用 `.tmp` 写入后物理原子重命名机制，彻底杜绝写竞争与文件损坏。

---

### 🗂️ 六维领域插槽 (Domain Taxonomy v2.1)

1. 🧠 **`[DOMAIN: COGNITION]` 认知推演与设计前瞻**：重任务主动多想 1~2 步，推演潜在缺陷与生命周期盲区；
2. 🛡️ **`[DOMAIN: DEFECT]` 缺陷修复与防线规范**：连带确凿缺陷无破坏一并彻底修复；
3. 📡 **`[DOMAIN: PROGRESS]` 运行过程与意图自适应**：微任务极速直通，重任务步骤心跳；
4. 📊 **`[DOMAIN: DELIVERY]` 终态交付展示规范**：双轨看板、Before/After 对照表；
5. 🌐 **`[DOMAIN: DOCS]` 工程资产与文档规范**：开源公开项目默认中英双语、中文置顶；
6. 🚫 **`[DOMAIN: FORBIDDEN]` 红线禁忌与反模式防线**：绝对禁止的高危操作阻断。

---

### 🚀 安装与使用

```bash
# 全局挂载 (所有支持 skills 的 AI IDE 通用)
npx skills add Ikaros-521/habit-distiller-skills -g
```

---

## 🇺🇸 English Documentation

**Habit Distiller Skills (v2.1)** is a zero-intrusion, sidecar habit management and adaptive governance framework for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

It eliminates the tension between **speed and rigor** by introducing **Adaptive Execution Depth**, while preventing cross-language context contamination through **Tech-Stack Scoping**.

### 🌟 Key Innovations

1. **Adaptive Execution Depth (Fast Path vs. Deep Path)**:
   - ⚡ **Fast Path**: For micro-tasks (command lookup, syntax checks, quick Q&A), the agent responds immediately with zero boilerplate or heavy dashboards.
   - 🛡️ **Deep Path**: For code modifications, architectural planning, and bug fixes, all heavy guardrails (Foresight, Defect Sweep, Observable Progress, Dual-Track Dashboard) activate automatically.
2. **Tech-Stack Scoping**: Annotate habits with `[Scope: python]`, `[Scope: frontend]`, or `[Scope: global]`. The agent dynamically filters rules based on the active repository environment.
3. **Habit Health & Stale Audit**: When manually triggering distillation, the agent audits existing rules for decay, obsolescence, and consolidation opportunities.
4. **Atomic Concurrency Protection**: Write-to-temp-then-rename prevents race conditions in multi-agent and multi-window environments.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
