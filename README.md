# Habit Distiller Skills (用户协同契约守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.7.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Conversational%20Branching-Supported-purple" alt="Conversational Branching">
  <img src="https://img.shields.io/badge/Habit%20TTL-Active-orange" alt="Habit TTL">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.7)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**用户协同契约守护、口语化建档、临时习惯 TTL 治理、工作区零污染层叠与事实证据核验系统**。

它正本清源地确立了一个基本事实：**系统提炼的不是模型的自恋习惯，而是“开发者期望模型怎么干活的具体契约”**。通过零侵入伴生机制、口语化档案分支、临时战役规则生命周期、工作区层叠、真实证据核验与手改自愈保护，实现真正透明、可控且纯净的 AI 协同体验。

### 🌟 v2.7 进阶亮点与控制力设计

#### 1. 口语化自然语言新建/克隆档案 (Conversational Profile Branching)
- 想要针对 Rust 或 Python 项目单独新建一套规约？无需退出敲脚本，直接在会话中对 AI 提出：
  > “保存当前习惯为档案 rust” 或 “新建习惯档案 python”
- AI 自动在 `~/.habit-distiller/profiles/<name>.md` 落盘持久化，后续随时自然切换。

#### 2. 临时/战役期习惯生命周期与退场 (Habit TTL & Expiration)
- 短期攻坚（如“这周做安全合规重构，每个接口必须打审计日志”）的规则，战役结束后不再长期赖在黄金底座里：
  - 提炼时允许声明有效期：`[Scope: global, TTL: 7d]`；
  - 到期后，AI 在查看清单时主动出具提示卡：`[1] 战役结束注销 (推荐)` / `[2] 转正为常驻契约` / `[3] 延期`。

#### 3. 外部档案导入安全预警与用户自主裁决 (Import Security Advisory)
- 导入同事或社区分享的 `.md` 档案时，系统内置敏感模式扫描，识别 `Ignore previous instructions` 或越狱高危指令：
- **不擅自武断拦截，而是出具预警卡由开发者自主裁决**（剔除可疑行 / 强制信任导入 / 终止导入），把掌控权牢牢交还给开发者。

#### 4. 冷启动无文件优雅容错 (Graceful Cold-Start Degradation)
- 新用户通过 `npx skills add` 安装后，本机尚未生成 `habits.md` 时：
- AI 绝对不抛异常或中断报错，视为空白基准正常执行业务代码，静候用户后续自然触发提炼。

#### 5. 工作区零污染层叠继承 (Workspace Cascade)
- 项目根目录仅需一个 `.habit-profile` 声明档案指向（如 `profile: work`）。
- 自动写入本地私有忽略文件 `.git/info/exclude`，**0% 污染代码库**，免去跨项目反复手动切换。

#### 6. 真实事实证据链履约核验 (Fact-Based Compliance Proof)
- 交付看板中【习惯契约核验】单元格**必须包含真实查验实据**（关联文件:行号、单测命令、或无连带 Bug 的逻辑判定依据），严禁空洞打勾、杜绝阳奉阴违。

---

### 🗂️ 六维领域插槽 (Domain Taxonomy v2.7)

1. 🧠 **`[DOMAIN: COGNITION]` 认知推演与设计前瞻**：重任务主动多想 1~2 步，推演潜在缺陷与生命周期盲区；
2. 🛡️ **`[DOMAIN: DEFECT]` 缺陷修复与防线规范**：连带确凿缺陷无破坏一并彻底修复；
3. 📡 **`[DOMAIN: PROGRESS]` 运行过程与意图自适应**：微任务极速直通，重任务步骤心跳；
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

**Habit Distiller Skills (v2.7)** is a zero-intrusion work-contract guardian, conversational profile brancher, temporary habit TTL lifecycle governor, and fact-verified pairing system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

It firmly establishes a foundational truth: **the system extracts not the model's ego or habits, but the explicit contract for how the developer expects the AI to work**. Through conversational profile branching, habit TTL expiration, zero-pollution workspace cascading, fact-based compliance proof, import security advisory, and permissive self-healing, it delivers a transparent, controllable, and pristine AI pair-programming experience.

### 🌟 New in v2.7: Conversational Branching & Lifecycle TTL

1. **Conversational Profile Branching (`新建习惯档案 [名称]`)**: Create or fork named profiles on the fly directly inside chat sessions without touching shell scripts.
2. **Temporary Habit TTL & Lifecycle Expiration (`[TTL: 7d]`)**: Annotate short-lived sprint rules with expiration periods; prompt developers to formalize, renew, or decommission them upon expiry to prevent zombie rules.
3. **Import Security Advisory Warning**: Scans imported `.md` files for jailbreak or high-risk patterns, presenting an interactive advisory alert for the developer's final verdict.
4. **Graceful Cold-Start Degradation**: When installed via `npx skills add` without local setup scripts, the agent gracefully treats missing configs as empty baselines without throwing errors.
5. **Workspace Profile Cascading & Fact-Based Proof**: Zero-pollution `.habit-profile` (isolated in `.git/info/exclude`) and verifiable factual evidence in summary audit cells.

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
