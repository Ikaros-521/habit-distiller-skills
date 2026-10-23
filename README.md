# Habit Distiller Skills (用户协同契约守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.8.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Conflict%20Resolution-Transparent-purple" alt="Conflict Resolution">
  <img src="https://img.shields.io/badge/Zero--Tool%20Latency-Active-brightgreen" alt="Zero Latency">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.8)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**用户协同契约守护、冲突统一揭示、零工具调用延迟、动态技术栈按需激活与事实证据核验系统**。

它正本清源地确立了一个基本事实：**系统提炼的不是模型的自恋习惯，而是“开发者期望模型怎么干活的具体契约”**。通过冲突统一透明化展示、内存缓存零读盘延迟、模糊意图主动反问澄清、动态语言作用域自适应与手改自愈保护，实现真正透明、可控且纯净的 AI 协同体验。

### 🌟 v2.8 进阶亮点与控制力设计

#### 1. 冲突统一揭示与用户修复仲裁 (Unified Conflict Resolution)
- **绝对禁止大模型自作主张**：无论是同一档案内部规则自相矛盾、新旧规则冲突、还是现实对话操作与书面契约背离：
- AI **清清楚楚列出冲突双方与根因**，出具选项卡交由开发者亲自修复（[1] 保留A / [2] 覆盖B / [3] 明确边界分工），彻底杜绝黑盒隐式覆盖。

#### 2. 内存常驻与极速微任务零工具延迟 (Zero-Tool Latency on Fast Path)
- 日常代码生成、单行问答等微任务，习惯由会话内存直接生效：
- **严禁在问答前主动调用 `read_file` 查盘**，秒级极速直出，无额外工具延迟；仅在用户显式发出管理口令时物理读写磁盘。

#### 3. 意图不明与纯负向规则主动反问 (Clarification Counter-Questions)
- 遇到开发者输入抽象主观词（“更艺术”）或纯负向约束（“不要随便改变量名”）：
- AI **绝对禁止脑补猜测，主动向开发者反问**，列出 2~3 个具体可执行的方向让开发者确认（亦支持“强制写入”逃生）。

#### 4. 动态技术栈 Scope 按需激活 (Dynamic Language Scoping)
- 单仓多语言（如前端 TS + 后端 Go）无需频繁手动切换档案：
- 系统根据当前操作文件的后缀名，**动态激活对应语言技术栈规则**（如编辑 `.go` 文件激活 `[Scope: go]`，未命中语言自动静默）。

#### 5. 口语化自然语言建档与多档案切换 (Conversational Profiles)
- 会话内直接支持自然语言建档：“`保存当前习惯为档案 rust`” 或 “`新建习惯档案 python`”；
- 随时通过“`切换习惯 work`”原子切换生效真相源。

#### 6. 真实事实证据链履约核验 (Fact-Based Compliance Proof)
- 交付看板中【习惯契约核验】单元格**必须包含真实查验实据**（关联文件:行号、单测命令、或无连带 Bug 的逻辑判定依据），严禁空洞打勾、杜绝阳奉阴违。

---

### 🗂️ 六维领域插槽 (Domain Taxonomy v2.8)

1. 🧠 **`[DOMAIN: COGNITION]` 认知推演与设计前瞻**：重任务主动多想 1~2 步，推演潜在缺陷与生命周期盲区；
2. 🛡️ **`[DOMAIN: DEFECT]` 缺陷修复与防线规范**：连带确凿缺陷无破坏一并彻底修复；
3. 📡 **`[DOMAIN: PROGRESS]` 运行过程与意图自适应**：微任务极速直通（零工具读盘），重任务步骤心跳；
4. 📊 **`[DOMAIN: DELIVERY]` 终态交付展示规范**：双轨看板、真实事实证据链、Before/After 对照表；
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

**Habit Distiller Skills (v2.8)** is a zero-intrusion work-contract guardian, unified conflict resolver, zero-tool-latency cache, and dynamic language-scoping system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

It firmly establishes a foundational truth: **the system extracts not the model's ego or habits, but the explicit contract for how the developer expects the AI to work**. Through transparent conflict presentation, in-memory zero-tool caching on fast path, proactive clarification counter-questions, and dynamic language scoping, it delivers a transparent, controllable, and pristine AI pair-programming experience.

### 🌟 New in v2.8: Conflict Transparency & Zero-Tool Latency

1. **Unified Conflict Presentation & User Resolution**: Never make unilateral assumptions when rules clash; clearly present rule tension and root causes for developer resolution.
2. **Zero-Tool Latency on Fast Path**: Habits operate in-memory during micro-tasks; disk reading tools (`read_file`) are strictly forbidden during simple Q&A to preserve sub-second response speeds.
3. **Clarification Counter-Questions**: Proactively prompt developers with multiple-choice questions when desires are negative ("don't do X") or ambiguous, rather than guessing.
4. **Dynamic Language-Scope Filtering**: Automatically activates language-specific rules (`[Scope: go]`, `[Scope: ts]`) matching the active file extensions, leaving un-matched rules quiet.
5. **Conversational Profile Branching & Fact-Based Proof**: Full natural language profile creation and verifiable concrete proof in delivery audit cells.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
