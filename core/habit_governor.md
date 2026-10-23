# Habit Governor: 习惯生命周期治理与全景防熵增引擎 (v2.4)

本文档定义了 Habit Distiller 如何在提炼与运行个人习惯时进行**单域 1+3 聚类浓缩、工具权限缺失主动索权、会话压缩留存快照与一键清单可视化查询**的标准作业程序（SOP）。

---

## 1. 核心治理机制升级 (v2.4 Architecture)

```mermaid
graph TD
    subgraph 开发者掌控与透明交互 (Developer Control & Clarity)
        A1["1. 一键习惯清单查询 (List Habits: 即时渲染状态计分卡)"]
        A2["2. 缺失工具主动索权提示 (Missing Tool Permission Prompt)"]
        A3["3. 会话压缩变化快照 (Compaction Habit Diff Snapshot)"]
    end

    subgraph 领域防肥胖收敛 (Anti-Bloat Synthesis)
        B1["4. 单域 1+3 聚类浓缩协议 (1 Core Directive + 3 Boundaries)"]
    end

    A1 & A2 & A3 & B1 --> SingleSource["单一真相源 (~/.habit-distiller/habits.md)"]
```

---

## 2. 核心机制细则

### 机制一：单域 1+3 聚类浓缩协议 (Per-Domain Anti-Bloat Synthesis)
- **痛点**：防止单个 Domain 内部不断追加细则，导致一个领域内部堆叠 10 几个子项的“局部肥胖”。
- **1+3 结构化收敛标准**：每个 Domain 内部**强制规范为“1 条核心行动纲领 + 最多 3 条边界约束指标”**：
  ```markdown
  ## [DOMAIN: DEFECT] 缺陷修复与防线规范
  - **核心行动纲领 (Core Directive)**：在排查或修复目标问题时，发掘出的关联确凿缺陷必须一并无破坏彻底修复。
  - **边界指标 (Boundaries)**：
    1. 必须有逻辑矛盾或报错事实证据，严禁风格主观臆断；
    2. 严格保持公开 API 契约不变，确保 0 回归；
    3. 修复方案必须提供复现与验证说明。
  ```
- **熔断机制**：当同一领域内拟新增第 4 条细则时，治理引擎**自动触发聚类浓缩**，将相似指标提炼合并，严禁列表无限向下无序扩张。

---

### 机制二：缺失工具权限主动索权提示 (Missing Tool Permission Prompt)
- **准则**：严禁隐式猜测或假装调用工具。当某个习惯（如构建验证、终端执行）因当前环境未授予工具权限（如缺少 `run_command`）受阻时：
- **主动交互**：AI 必须直接向用户索权或引导本地执行：
  > ⚠️ *“遵从您的【连带缺陷验证】习惯需要执行构建测试，但当前窗口未授予终端工具权限。请授予终端权限，或由您在宿主机本地终端运行：`npm test`。”*

---

### 机制三：会话压缩变化快照 (Compaction Habit Invariant Snapshot)
- **场景**：当会话经过多轮长对话执行 `/compact` 上下文压缩，或在阶段性里程碑总结时。
- **输出规范**：AI 必须在压缩摘要头部输出一份简明快照，便于用户随时审阅与修正：
  ```markdown
  📌 [当前生效习惯快照]
  - 核心契约：前瞻发散推演 | 连带缺陷清零 | 意图分级自适应(微任务直通) | 双轨交付看板 | 开源双语文档
  - 作用域状态：当前技术栈命中规则已按需挂载
  - 如需调整当前协同习惯，可直接输入：“调整习惯 [规则名]”
  ```

---

### 机制四：一键习惯清单与状态计分卡 (Habit Scorecard Command)
- **触发指令**：用户发送“查看我的习惯”、“查看习惯清单”、“习惯状态”或“list habits”。
- **输出规范**：AI 立即读取 `~/.habit-distiller/habits.md`，以 1 页精炼的**可视化计分卡表格**直接渲染呈现：
  ```markdown
  ### 📋 您的专属 AI 协同契约清单 (Habit Scorecard)

  | 领域插槽 (Domain) | 核心行动纲领 (Core Directive) | 作用域 (Scope) | 状态 |
  | :--- | :--- | :--- | :--- |
  | 🧠 **COGNITION** | 深度任务多想 1~2 步，推演隐性盲区与生命周期风险 | `global` | 🟢 活跃 |
  | 🛡️ **DEFECT** | 确凿关联缺陷顺藤摸瓜一并彻底修复，严格防回归 | `global` | 🟢 活跃 |
  | 📡 **PROGRESS** | 微任务极速直通秒出结果，重任务步骤心跳可视 | `global` | 🟢 活跃 |
  | 📊 **DELIVERY** | 终态采用结构化对比表看板与 Artifacts 呈现 | `global` | 🟢 活跃 |
  | 🌐 **DOCS** | 开源公开项目 README 默认中英双语、中文置顶 | `global` | 🟢 活跃 |
  | 🚫 **FORBIDDEN** | 严禁私加大型外部库、乱删注释、提交硬编码密钥 | `global` | 🛑 阻断级 |

  - 💡 单一真相源路径：`~/.habit-distiller/habits.md` (写前镜像自动备份有效)
  - 🔧 快捷操作：直接回复“提炼新习惯 [内容]”增补，或“撤回刚才的更新”回滚。
  ```
