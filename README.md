# Habit Distiller Skills (用户协同契约守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.5.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Multi--Profile-Supported-purple" alt="Multi Profile">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.5)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**用户协同契约守护、多档案场景切换、防碎片化全景治理与高弹性自愈系统**。

它正本清源地确立了一个基本事实：**系统提炼的不是模型的自恋习惯，而是“开发者期望模型怎么干活的具体契约”**。通过零侵入伴生机制、场景化档案无缝切换、定向习惯注销、意图分级自适应、单域 1+3 聚类浓缩、主观虚词反模糊转译与手改自愈保护，实现真正透明、可控且纯净的 AI 协同体验。

### 🌟 v2.5 进阶亮点与控制力设计

#### 1. 多套场景习惯档案无缝切换 (Multi-Profile Switcher)
- 开发者在不同场景下的诉求天然不同：公司商业项目需要企业合规与严密审查，个人开源项目需要极度轻量与中英双语文档。
- 系统支持在 `~/.habit-distiller/profiles/` 下维护多套独立档案（如 `work`、`open-source`、`default`）：
  > “切换习惯 work” 或 “使用开源档案”
- AI 自动保存当前更改，物理原子切换底层真相源，全 IDE 即刻生效。

#### 2. 单条习惯定向精准注销 (Targeted Habit Deletion)
- 补齐 CRUD 闭环！除整体一键撤回外，支持针对单条特定规则的靶向拔除：
  > “删除习惯 开源双语文档” 或 “注销第 3 条习惯”
- AI 自动生成写前镜像 `habits.md.bak`，精准剔除目标条目，其余规则完好无损。

#### 3. 主观虚词反模糊转译与强制逃生 (Disambiguation & Force-Write)
- 遇到开发者输入抽象主观词（如“写得更有艺术感”、“逻辑更严谨一点”）：
  - **建议转译**：AI 基于第一性原理转译为具体工程指标向用户反问澄清（如“防御性判空与边界兜底”）；
  - **强制逃生**：若开发者明确回复“强制写入”或坚持原话，AI 立即尊重开发者意愿原样沉淀，绝不反复辩论。

#### 4. 知行背离智能自愈与冲突仲裁 (Drift & Conflict Arbitration)
- 当书面习惯写着“必须补单测”，但开发者连续多次要求“赶进度直接出业务代码”时：
- AI 识别冲突并主动友好探问：
  - [1] **仅当前会话特例放行**（保留书面契约，本次临时豁免）；
  - [2] **同步修改全局书面契约**；
  - [3] **注销该书面习惯**。

#### 5. 开源精选双语档案开箱即用 (Curated Open-Source Profile)
- 仓库内直接预置开源精选档案 [`profiles/open-source.md`](profiles/open-source.md)，包含经实战检验的 6 大领域黄金协同契约（认知推演、缺陷连带清零、意图自适应、双轨看板、中英双语 README 置顶、高危操作阻断）。

#### 6. 一键习惯清单查询与计分卡 (Habit Scorecard)
- 随时在对话中发送：
  > “查看我的习惯” 或 “查看习惯清单”
- AI 立即以 1 页精炼的**可视化计分卡表格**直接渲染当前六大领域的生效规则、作用域与执行状态。

---

### 🗂️ 六维领域插槽 (Domain Taxonomy v2.5)

1. 🧠 **`[DOMAIN: COGNITION]` 认知推演与设计前瞻**：重任务主动多想 1~2 步，推演潜在缺陷与生命周期盲区；
2. 🛡️ **`[DOMAIN: DEFECT]` 缺陷修复与防线规范**：连带确凿缺陷无破坏一并彻底修复；
3. 📡 **`[DOMAIN: PROGRESS]` 运行过程与意图自适应**：微任务极速直通，重任务步骤心跳；
4. 📊 **`[DOMAIN: DELIVERY]` 终态交付展示规范**：双轨看板、Before/After 对照表；
5. 🌐 **`[DOMAIN: DOCS]` 工程资产与文档规范**：开源公开项目默认中英双语、中文置顶；
6. 🚫 **`[DOMAIN: FORBIDDEN]` 红线禁忌与反模式防线**：绝对禁止的高危操作阻断。

---

### 🚀 安装、分发与跨机管理

#### 全局安装 (所有支持 skills 的 AI IDE 通用)
```bash
npx skills add Ikaros-521/habit-distiller-skills -g
```

#### 本地跨机脚本管理
```powershell
# Windows PowerShell
.\scripts\sync.ps1 -Target install-global                    # 全局安装与挂载
.\scripts\sync.ps1 -Target switch-profile -ProfileName work   # 切换至 work 工作档案
.\scripts\sync.ps1 -Target list-profiles                     # 列出本机所有可用档案
.\scripts\sync.ps1 -Target export -FilePath .\my-habits.md   # 导出当前习惯
.\scripts\sync.ps1 -Target import -FilePath .\my-habits.md   # 导入习惯
```

```bash
# macOS / Linux Bash
./scripts/sync.sh install-global                             # 全局安装与挂载
./scripts/sync.sh switch-profile open-source                 # 切换至开源档案
./scripts/sync.sh list-profiles                              # 列出本机档案
./scripts/sync.sh export ./my-habits.md                      # 导出习惯
./scripts/sync.sh import ./my-habits.md                      # 导入习惯
```

---

## 🇺🇸 English Documentation

**Habit Distiller Skills (v2.5)** is a zero-intrusion, portable work-contract guardian, multi-profile switcher, and resilient governance system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

It firmly establishes a foundational truth: **the system extracts not the model's ego or habits, but the explicit contract for how the developer expects the AI to work**. Through zero-intrusion sidecar storage, seamless multi-profile switching, targeted habit deletion, intent-adaptive depth, single-domain 1+3 synthesis, actionability disambiguation, and permissive self-healing, it delivers a transparent, controllable, and pristine AI pair-programming experience.

### 🌟 New in v2.5: Multi-Profile & Granular Lifecycle Control

1. **Multi-Profile Switcher (`切换习惯 [名称]` / `switch-profile`)**: Maintain separate habit profiles (e.g. `work`, `open-source`, `default`) under `~/.habit-distiller/profiles/` and swap active contracts seamlessly across all AI IDE sessions.
2. **Targeted Habit Deletion (`删除习惯 [名称]` / targeted deletion)**: Precise removal of individual obsolete rules with pre-write mirror backups without corrupting surrounding rules.
3. **Actionability Disambiguation & Force-Write Escape**: Subjective/vague terms are proactively translated into actionable engineering criteria; if the user insists on "force write", their raw words are honored without debate.
4. **Habit-Action Drift & Conflict Arbitration**: Detects friction between written contracts and real-time instructions, prompting the user to pick: temporary session pass, contract update, or rule deletion.
5. **Curated Open-Source Bilingual Profile**: Ready-to-use template [`profiles/open-source.md`](profiles/open-source.md) enforcing bilingual READMEs (Chinese default on top), chain bug sweeps, and proactive cognition.
6. **Instant Habit Scorecard (`查看习惯清单` / `list habits`)**: One-page status table visualizing all active domain directives and scopes.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
