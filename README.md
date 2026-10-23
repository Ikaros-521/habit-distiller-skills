# Habit Distiller Skills (用户协同契约守护与全景治理系统)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.6.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Workspace%20Cascade-Supported-purple" alt="Workspace Cascade">
  <img src="https://img.shields.io/badge/Fact--Based%20Audit-Enforced-orange" alt="Fact-Based Audit">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**简体中文**](#-中文文档) | [**English**](#-english-documentation)

---

## 🇨🇳 中文文档

**Habit Distiller Skills (v2.6)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity、Windsurf 等）的**用户协同契约守护、工作区零污染层叠、事实证据履约核验与高弹性自愈系统**。

它正本清源地确立了一个基本事实：**系统提炼的不是模型的自恋习惯，而是“开发者期望模型怎么干活的具体契约”**。通过零侵入伴生机制、工作区层叠、事实证据核验、并发防写冲突、意图分级自适应、单域 1+3 聚类浓缩与手改自愈保护，实现真正透明、可控且纯净的 AI 协同体验。

### 🌟 v2.6 进阶亮点与控制力设计

#### 1. 工作区零污染层叠继承 (Workspace Cascade)
- 全局习惯是“中英双语”，但当前正在维护纯英文开源项目或公司内部闭源仓库？
- **零污染探测机制**：项目根目录仅需一个 `.habit-profile` 声明档案指向（如 `profile: work`）。
- **0% 代码库污染**：脚本自动将 `.habit-profile` 注入本地 `.git/info/exclude`，**无需修改项目的 `.gitignore`**，Git 状态保持绝对纯净。

#### 2. 真实事实证据链履约核验 (Fact-Based Compliance Proof)
- **彻底杜绝模型阳奉阴违**：拒绝模型形式主义打虚假勾！在重任务交付看板的【习惯契约核验】中：
  - **必须给出事实实据**：连带排查了哪些文件、行号与调用链路，证实为何无次生 Bug；或提供验证单测的执行命令与结果；
  - 若未发现连带缺陷，必须写明判定依据；
  - **无实据一律判定为未真正履约**。

#### 3. 多会话并发写冲突保护 (Concurrent Write Protection)
- 多个 AI IDE 窗口（如 Antigravity 与 Cursor 同时运行）并发提炼或切换习惯时：
- 系统内置写前 mtime 时间戳校验。若磁盘文件在会话执行期间已被外部更新，自动执行聚类合并并提醒，防止无脑盲写覆盖。

#### 4. 跨进程运行时缓存失效感知提示 (Runtime Cache Invalidation Notice)
- 在某个窗口切换档案或更新习惯后，AI 自动在末尾输出版本心跳与感知提示：
  > 💡 *版本快照：v2.6 [时间戳] · 当前生效档案：[work]<br>📌 跨窗口提示：若在其他 IDE（如 Cursor、Trae）中有常驻运行的长会话，建议开启新对话以加载最新生效契约。*

#### 5. 多套场景习惯档案无缝切换 (Multi-Profile Switcher)
- 支持在 `~/.habit-distiller/profiles/` 下维护多套独立档案（如 `work`、`open-source`、`default`）：
  > “切换习惯 work” 或 “使用开源档案”
- 瞬间原子切换，跨所有 AI IDE 立即生效。

#### 6. 单条习惯定向精准注销 (Targeted Habit Deletion)
- 补齐 CRUD 闭环！支持自然语言靶向拔除指定规则：
  > “删除习惯 开源双语文档” 或 “注销第 3 条习惯”
- 自动生成镜像备份 `habits.md.bak`，精准剔除目标条目，其余规则完好无损。

---

### 🗂️ 六维领域插槽 (Domain Taxonomy v2.6)

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
.\scripts\sync.ps1 -Target import -FilePath .\my-habits.md   # 导入习惯
```

```bash
# macOS / Linux Bash
./scripts/sync.sh install-global                             # 全局安装与挂载
./scripts/sync.sh init-workspace work                        # 当前项目绑定 work 档案 (0% 污染)
./scripts/sync.sh switch-profile open-source                 # 全局切换至开源档案
./scripts/sync.sh list-profiles                              # 列出本机档案
./scripts/sync.sh export ./my-habits.md                      # 导出习惯
./scripts/sync.sh import ./my-habits.md                      # 导入习惯
```

---

## 🇺🇸 English Documentation

**Habit Distiller Skills (v2.6)** is a zero-intrusion work-contract guardian, workspace-cascaded profiler, and fact-verified governance system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

It firmly establishes a foundational truth: **the system extracts not the model's ego or habits, but the explicit contract for how the developer expects the AI to work**. Through zero-intrusion sidecar storage, workspace profile cascading, fact-based compliance proof (zero rubber-stamping), concurrent write protection, targeted habit deletion, intent-adaptive depth, and permissive self-healing, it delivers a transparent, controllable, and pristine AI pair-programming experience.

### 🌟 New in v2.6: Workspace Cascading & Fact-Based Verification

1. **Workspace Profile Cascading (`.habit-profile`)**: Bind a specific habit profile to any project workspace with 0% git pollution (automatically declared via `.git/info/exclude` without modifying `.gitignore`).
2. **Fact-Based Compliance Proof (Anti-Rubber-Stamping)**: Enforces verifiable concrete evidence in the delivery dashboard (e.g. specific inspected files, lines, and test outputs); empty checkmarks or rubber-stamping are strictly disallowed.
3. **Concurrent Write Protection**: Read-before-write timestamp validation prevents multi-agent write collisions across simultaneous IDE sessions.
4. **Runtime Cache Invalidation Notice**: Automatic cross-window reminders prompting developers to refresh or restart long-running sessions when habits change.
5. **Multi-Profile Switcher & Targeted Deletion**: Instant swapping of profiles (`switch-profile`) and surgical removal of individual rules (`删除习惯 [名称]`).

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
