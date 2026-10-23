# Habit Distiller Skills (用户协同契约守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.9.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/Edition-Full%20Featured-purple" alt="Full Featured">
  <img src="https://img.shields.io/badge/Lightweight%20Branch-Available-orange" alt="Lightweight">
  <img src="https://img.shields.io/badge/LLMs.txt-Supported-blue" alt="llms.txt">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation) | [🌿 **轻量精简版 (Lightweight Branch)**](https://github.com/Ikaros-521/habit-distiller-skills/tree/lightweight) | [📄 **llms.txt**](llms.txt)

> 💡 **版本选装指引**：
> - **主线版本 (`main`)**：**全功能企业级治理版**（大纲骨架自愈、多档案无缝切换、事实证据链核验、冲突统一揭示、工作区零污染层叠）；
> - **轻量版本 (`lightweight`)**：**KISS 极简版**（仅 35 行核心规则，只聚焦“意图捕捉 $\to$ 草案确认 $\to$ 安全落盘”三步法），如需轻量版请访问 👉 [**lightweight 分支**](https://github.com/Ikaros-521/habit-distiller-skills/tree/lightweight)。

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.9)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**用户协同契约守护、大纲骨架自愈、回滚透明确认、零工具调用延迟与事实证据核验系统**。

它正本清源地确立了一个基本事实：**系统提炼的不是模型的自恋习惯，而是“开发者期望模型怎么干活的具体契约”**。通过大纲骨架无损自愈、回滚明确确认、冲突统一透明化展示、内存缓存零读盘延迟、动态语言作用域自适应与手改自愈保护，实现真正透明、可控且纯净的 AI 协同体验。

### 📊 业界主流方案对比 (Ecosystem Comparison)

| 对比维度 | Habit Distiller Skills | 项目规则文件 (.cursorrules / CLAUDE.md) | 外部记忆库 (Mem0 / Letta) | 原生自定义指令 (Custom Instructions) |
| :--- | :--- | :--- | :--- | :--- |
| **代码库侵入度** | 🟢 **0% 污染** (存本机 `~/.habit-distiller`) | 🔴 **严重污染** (每个项目都产生无谓文件) | 🟡 **中等** (需配置外部数据库/服务器) | 🟢 **0% 污染** |
| **跨 AI IDE 互通性** | 🟢 **全平台通用** (Claude Code, Trae, Antigravity, Cursor) | 🔴 **厂商私有绑定** (各家语法互不兼容) | 🟡 **需专有 SDK/API 绑定** | 🔴 **仅限单家 Web 界面** |
| **维护与依赖开销** | 🟢 **极简本地 Markdown (KISS 原则)** | 🔴 **手工反复维护** | 🔴 **重度依赖** (Python、向量库、外部密钥) | 🔴 **静态文本，无法对话自动演进** |
| **对话逆向提炼** | 🟢 **支持自然语言提炼、反问与人本确认** | 🔴 **不支持** | 🟢 **支持** | 🔴 **不支持** |
| **容灾与版本撤回** | 🟢 **写前自动备份，随时透明撤回** | 🔴 **需借助 git 回滚** | 🟡 **黑盒向量状态难以审计** | 🔴 **无版本回滚能力** |

---

### 🌟 v2.9 进阶亮点与控制力设计

#### 1. 核心大纲骨架无损自愈 (Structural Heading Self-Healing)
- 开发者在本地编辑器手改 `habits.md` 时，不慎误删了领域标题（如 `## 2. 缺陷修复与防线规范`）：
- AI 重新落盘时**自动无损补齐缺失的大纲骨架**，开发者原有的所有子规则、注释与自定义条目 100% 完好无损，杜绝后续规则插入错位。

#### 2. 回滚明确说明与透明确认 (Transparent Rollback Confirmation)
- 发送“`撤回刚才的习惯更新`”时，拒绝黑盒操作：
- AI 物理原子恢复 `habits.md.bak` 并出具明确说明卡：`已回滚至 [时间戳] 版本，已撤销【规则名】，其余 5 项规则完好生效`。

#### 3. 外部工具异常客观呈现与用户自主修复 (Factual Tool Error & User Control)
- 当执行习惯核验（如跑单元测试 `npm test`）遭遇外部环境崩溃（端口占用、断网、环境缺失）：
- AI 保持严整交付看板，在履约单元格**如实客观记录报错事实**，并将环境修复掌控权交还给开发者，绝不慌乱抛出未经加工的错误堆栈。

#### 4. 冲突统一揭示与用户修复仲裁 (Unified Conflict Resolution)
- 任何规则冲突（同一档案内部自相矛盾、新旧规则冲突、知行背离）：
- AI **清清楚楚列出冲突双方与根因**，出具选项卡交由开发者亲自修复（[1] 保留A / [2] 覆盖B / [3] 明确边界分工），彻底杜绝黑盒隐式覆盖。

#### 5. 内存常驻与极速微任务零工具延迟 (Zero-Tool Latency on Fast Path)
- 日常代码生成、单行问答等微任务，习惯由会话内存直接生效：
- **严禁在问答前主动调用 `read_file` 查盘**，秒级极速直出；仅在用户显式发出管理口令时物理读写磁盘。

#### 6. 动态技术栈 Scope 按需激活 (Dynamic Language Scoping)
- 单仓多语言（如前端 TS + 后端 Go）无需频繁手动切换档案：
- 系统根据当前操作文件的后缀名，**动态激活对应语言技术栈规则**（如编辑 `.go` 文件激活 `[Scope: go]`，未命中语言自动静默）。

---

### 🗂️ 六维领域插槽 (Domain Taxonomy v2.9)

1. 🧠 **`[DOMAIN: COGNITION]` 认知推演与设计前瞻**：重任务主动多想 1~2 步，推演潜在缺陷与生命周期盲区；
2. 🛡️ **`[DOMAIN: DEFECT]` 缺陷修复与防线规范**：连带确凿缺陷无破坏一并彻底修复；
3. 📡 **`[DOMAIN: PROGRESS]` 运行过程与意图自适应**：微任务极速直通（零工具读盘），重任务步骤心跳；
4. 📊 **`[DOMAIN: DELIVERY]` 终态交付展示规范**：双轨看板、真实事实证据链、Before/After 对照表；
5. 🌐 **`[DOMAIN: DOCS]` 工程资产与文档规范**：开源公开项目默认中英双语、中文置顶；
6. 🚫 **`[DOMAIN: FORBIDDEN]` 红线禁忌与反模式防线**：绝对禁止的高危操作阻断。

---

### 🚀 安装、分发与跨机管理

#### 全局安装与版本选装 (所有支持 skills 的 AI IDE 通用)

```bash
# 选项 A：安装全功能主线版 (默认 main 分支)
npx skills add Ikaros-521/habit-distiller-skills -g

# 选项 B：安装极简轻量版 (仅 35 行核心规则，无多余理论包袱)
npx skills add Ikaros-521/habit-distiller-skills#lightweight -g
```

#### 本地跨机脚本管理
```powershell
# Windows PowerShell
.\scripts\sync.ps1 -Target install-global                    # 全局安装与挂载
.\scripts\sync.ps1 -Target init-workspace -ProfileName work  # 当前项目绑定 work 档案 (0% 污染)
.\scripts\sync.ps1 -Target switch-profile -ProfileName work   # 全局切换至 work 工作档案
.\scripts\sync.ps1 -Target list-profiles                     # 列出本机所有可用档案
.\scripts\sync.ps1 -Target export -FilePath .\my-habits.md   # 导出当前习惯
.\scripts\sync.ps1 -Target import -FilePath .\my-habits.md   # 导入习惯 (带安全扫描)
```

```bash
# macOS / Linux Bash
./scripts/sync.sh install-global                             # 全局安装与挂载
./scripts/sync.sh init-workspace work                        # 当前项目绑定 work 档案 (0% 污染)
./scripts/sync.sh switch-profile open-source                 # 全局切换至开源档案
./scripts/sync.sh list-profiles                              # 列出本机档案
./scripts/sync.sh export ./my-habits.md                      # 导出习惯
./scripts/sync.sh import ./my-habits.md                      # 导入习惯 (带安全扫描)
```

---

## 🇺🇸 English Documentation

**Habit Distiller Skills (v2.9)** is a zero-intrusion work-contract guardian, structural heading self-healer, transparent rollback confirmer, and factual tool-resilient pairing system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

> 💡 **Edition Guide**:
> - **Main Edition (`main`)**: **Full-Featured Governance Edition** (lossless heading self-healing, multi-profile switcher, fact-based compliance proof, unified conflict resolution, workspace cascading).
> - **Lightweight Edition (`lightweight`)**: **KISS Minimalist Edition** (35-line lean definition, strictly focused on 3-step habit distillation). Visit the 👉 [**lightweight branch**](https://github.com/Ikaros-521/habit-distiller-skills/tree/lightweight).

### 📊 Ecosystem Comparison

| Dimension | Habit Distiller Skills | Project Rules (.cursorrules / CLAUDE.md) | Vector Memory (Mem0 / Letta) | Custom Instructions (Web UI) |
| :--- | :--- | :--- | :--- | :--- |
| **Codebase Pollution** | 🟢 **0% Clean** (`~/.habit-distiller`) | 🔴 **High** (pollutes git history) | 🟡 **Medium** (requires external DB) | 🟢 **0% Clean** |
| **Cross-IDE Portability** | 🟢 **Universal** (Claude Code, Trae, Antigravity, Cursor) | 🔴 **Vendor-locked** | 🟡 **Requires SDK integrations** | 🔴 **Single Web UI only** |
| **Maintenance Overhead** | 🟢 **Zero Dependencies (KISS & Markdown)** | 🔴 **Manual repetitive edits** | 🔴 **High** (Python, vector DBs, API keys) | 🔴 **Static text, cannot evolve** |
| **Dialogue Extraction** | 🟢 **Natural language distillation with human-in-the-loop** | 🔴 **Not supported** | 🟢 **Supported** | 🔴 **Not supported** |
| **Safety & Undo** | 🟢 **Atomic `.bak` snapshots, instant rollback** | 🔴 **Requires git revert** | 🟡 **Blackbox vector states** | 🔴 **No rollback history** |

### 🌟 Installation by Edition

```bash
# Option A: Install Full-Featured Edition (main branch)
npx skills add Ikaros-521/habit-distiller-skills -g

# Option B: Install Minimalist Lightweight Edition (lightweight branch)
npx skills add Ikaros-521/habit-distiller-skills#lightweight -g
```

### 🌟 New in v2.9: Structural Resilience & Transparent Rollback

1. **Structural Heading Lossless Self-Healing**: Automatically reconstructs missing canonical domain headings if accidentally deleted during manual editing, preserving 100% of the developer's surviving rules.
2. **Transparent Rollback Confirmation**: Clearly explains which rule is being revoked and what snapshot timestamp is being restored when rolling back via natural language.
3. **Factual Tool Error Reporting & User Control**: Succinctly logs environmental tool failures in the audit row rather than panicking, leaving repair control in the developer's hands while keeping delivery tables intact.
4. **Unified Conflict Presentation & User Resolution**: Never make unilateral assumptions when rules clash; clearly present rule tension and root causes for developer resolution.
5. **Zero-Tool Latency on Fast Path**: In-memory caching preserves sub-second response speeds without unnecessary disk reads during everyday Q&A.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
