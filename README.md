# Habit Distiller Skills (用户协同契约守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.4.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
  <img src="https://img.shields.io/badge/Scorecard%20Command-Supported-purple" alt="Scorecard Command">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.4)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**用户协同契约守护、防碎片化全景治理与高弹性自愈系统**。

它正本清源地确立了一个基本事实：**系统提炼的不是模型的自恋习惯，而是“开发者期望模型怎么干活的具体契约”**。通过零侵入伴生机制、意图分级自适应、单域 1+3 聚类浓缩、手改自愈保护以及一键清单可视化查询，实现真正透明、可控且纯净的 AI 协同体验。

### 🌟 v2.4 进阶亮点与控制力设计

#### 1. 一键习惯清单查询与计分卡 (Habit Scorecard)
- 随时在对话中发送：
  > “查看我的习惯” 或 “查看习惯清单”
- AI 立即以 1 页精炼的**可视化计分卡表格**直接渲染当前六大领域的生效规则、作用域与执行状态，一目了然。

#### 2. 缺失工具权限主动索权 (Tool Permission Prompting)
- 当遵从习惯（如运行单测、构建验证）需要终端环境，但当前窗口未授予终端工具权限时，AI 严禁隐式猜测或假装调用，必须**直接向开发者主动索权**，或提示在宿主机本地终端执行。

#### 3. 单域 1+3 聚类浓缩协议 (Anti-Bloat Synthesis)
- 针对单个领域内部无休止追加子项导致的“局部肥胖”，建立熔断机制：每个领域**强制收敛为“1 条核心行动纲领 + 最多 3 条边界指标”**，超出时自动触发聚类浓缩。

#### 4. 结构化输出契约防漏自审 (Schema-Enforced Audit)
- 习惯履约自审被直接物理锚定在深度任务交付看板的必填单元格内（`| **习惯契约核验** | 🛡️ [连带清零/反馈贯穿] |`），模型填充表格时强制触发核验注意力，彻底杜绝遗漏。

#### 5. 自然语言一键撤回 (Natural Language Undo)
- 对刚提炼或合并的结果不满意？直接发送：
  > “撤回刚才的习惯更新” 或 “恢复上一版习惯”
- AI 自动利用写前镜像 `habits.md.bak` 进行物理原子回退，秒级恢复上一版。

---

### 🗂️ 六维领域插槽 (Domain Taxonomy v2.4)

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

**Habit Distiller Skills (v2.4)** is a zero-intrusion, portable work-contract guardian and resilient governance system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

### 🌟 New in v2.4: Transparency & Anti-Bloat Synthesis

1. **Instant Habit Scorecard (`查看习惯清单` / `list habits`)**: Instantly inspect active rules, scopes, and domains in a clean, one-page status table.
2. **Missing Tool Permission Prompting**: When terminal tools are required to verify compliance but unpermitted, the agent explicitly prompts for authorization or provides the exact local terminal command.
3. **Single-Domain 1+3 Anti-Bloat Synthesis**: Restricts each domain to *1 Core Directive + up to 3 Boundary Criteria*, preventing unbounded bullet-point sprawl.
4. **Schema-Enforced Self-Audit**: Anchors compliance verification directly into required summary table cells (`| Habit Contract Audit | Verified |`).
5. **Natural Language Undo**: Instantly rollback via *"Undo recent habit update"*.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
