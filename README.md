# Habit Distiller Skills (用户协同契约守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.2.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
  <img src="https://img.shields.io/badge/Portability-Export%20%26%20Import-purple" alt="Portability">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.2)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**用户协同契约守护、防碎片化治理与跨机随身漫游系统**。

它正本清源地确立了一个基本事实：**系统提炼的不是模型的自恋习惯，而是“开发者期望模型怎么干活的具体契约”**。通过零侵入伴生机制、意图分级自适应、技术栈隔离以及极简的离线跨机导入导出，让您调教出的最佳 AI 工作流如影随形。

### 🌟 核心理念与进阶特性

#### 1. 提炼的是“用户期望模型干活的契约” (User Work Contract)
- 严禁将单次任务的代码逻辑选择（如“这次用冒泡排序”、“临时跳过单测”）误判为长期习惯；
- 提炼时必须向用户呈现判定证据与期望干活方式，方便开发者肉眼纠错。

#### 2. 极简离线跨机导出与导入 (Portable Export & Import)
无需折腾复杂的云端同步服务，秉持 KISS 原则，一行脚本实现跨设备随身迁移：
```powershell
# 在旧电脑导出习惯快照 (生成单一 Markdown 文件)
.\scripts\sync.ps1 -Target export -FilePath ".\my-habits.md"

# 在新电脑一键导入 (自动完成物理镜像备份与安全替换)
.\scripts\sync.ps1 -Target import -FilePath ".\my-habits.md"
```

#### 3. 敏感数据与特定私网特征审查 (Secret Sanitizer)
提炼时若检测到 Token、密码、私网 IP 或内网域名 (`*.corp` / `*.internal`)，AI 自动高亮提示并提供选项：
- `[A] (推荐)` 自动脱敏为通用原则；
- `[B]` 保留特定值用于局域内部环境。

#### 4. 动态观察期与陈旧健康度巡检 (Observation Horizon & Stale Audit)
- 对不确定或探索中的新习惯，可标记缩短观察期（如 `[Review: 7d]`）；
- 当您手动触发提炼时，AI 同步回检已有习惯，主动向您提示：*“发现第 3 条规则已到期/较陈旧，请问是转正还是清理？”*

---

### 🗂️ 六维领域插槽 (Domain Taxonomy v2.2)

1. 🧠 **`[DOMAIN: COGNITION]` 认知推演与设计前瞻**：重任务主动多想 1~2 步，推演潜在缺陷与生命周期盲区；
2. 🛡️ **`[DOMAIN: DEFECT]` 缺陷修复与防线规范**：连带确凿缺陷无破坏一并彻底修复；
3. 📡 **`[DOMAIN: PROGRESS]` 运行过程与意图自适应**：微任务极速直通，重任务步骤心跳；
4. 📊 **`[DOMAIN: DELIVERY]` 终态交付展示规范**：双轨看板、Before/After 对照表；
5. 🌐 **`[DOMAIN: DOCS]` 工程资产与文档规范**：开源公开项目默认中英双语、中文置顶；
6. 🚫 **`[DOMAIN: FORBIDDEN]` 红线禁忌与反模式防线**：绝对禁止的高危操作阻断。

---

### 🚀 安装与分发

```bash
# 全局挂载 (所有支持 skills 的 AI IDE 通用)
npx skills add Ikaros-521/habit-distiller-skills -g
```

---

## 🇺🇸 English Documentation

**Habit Distiller Skills (v2.2)** is a zero-intrusion, portable work-contract guardian and anti-entropy governance system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

It grounds itself in a fundamental truth: **We are not modeling the AI's internal habits—we are capturing the developer's explicit expectations of how the AI must execute tasks.**

### 🌟 Core Capabilities

1. **User-Centric Work Contract**: Captures how *you* expect the agent to work, strictly distinguishing between one-off situational tasks and genuine universal workflows.
2. **KISS Offline Export & Import**:
   ```powershell
   .\scripts\sync.ps1 -Target export -FilePath ".\my-habits.md"
   .\scripts\sync.ps1 -Target import -FilePath ".\my-habits.md"
   ```
3. **Secret & Sensitive Data Sanitizer**: Flags private tokens, internal IPs, and enterprise domain names before persistence.
4. **Observation Horizon & Decay Audit**: Assigns short review windows (e.g. 7 days) to experimental practices and audits them during manual distillation.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
