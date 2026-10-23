# Habit Governor: 习惯生命周期治理与全景防熵增引擎 (v2.1)

本文档定义了 Habit Distiller 如何在提炼与运行个人习惯时进行**技术栈作用域隔离、自适应意图分级、多 Agent 并发原子保护、提炼时陈旧习惯巡检与冲突智能仲裁**的标准作业程序（SOP）。

---

## 1. 核心治理机制升级 (v2.1 Architecture)

```mermaid
graph TD
    subgraph 运行态感知 (Runtime Phase)
        A1["1. 意图分级自适应 (Adaptive Depth: Fast-Path vs Deep-Path)"]
        A2["2. 技术栈作用域过滤 (Tech-Stack Scoping: [Scope: ...])"]
        A3["3. 规则冲突智能仲裁 (Conflict Arbitration)"]
    end

    subgraph 提炼与演进态 (Evolution Phase)
        B1["4. 提炼时旧习惯健康度巡检 (Habit Health & Stale Audit)"]
        B2["5. 约束保真合并与红线防线 (Constraint Preservation & Forbidden)"]
        B3["6. 原子重命名并发防撕裂 (Atomic Temp-Rename)"]
    end

    A1 & A2 & A3 --> SingleSource["单一真相源 (~/.habit-distiller/habits.md)"]
    B1 & B2 & B3 --> SingleSource
```

---

## 2. 核心机制细则

### 机制一：意图分级自适应与极速直通 (Adaptive Execution Depth)
- **第一性原理**：“针对简单查询快速给出准确结果”本身就是一种高价值习惯。无需开发者记忆死板的口令，AI 应根据任务实际场景**自主理解并分级规划**执行深度：
  1. **极速直通通道 (Fast-Path Mode)**：
     - **触发场景**：单行命令查询、代码片段速查、纯概念释义、轻量文本修改等微任务；
     - **执行策略**：直接返回精准、干净的核心答案，自动豁免步骤反馈心跳、不强制出具双轨看板、不作冗长的前瞻发散，实现秒级响应。
  2. **深度防线通道 (Deep-Path Mode)**：
     - **触发场景**：多文件修改、复杂缺陷排查、系统重构、发布打包、新架构设计；
     - **执行策略**：全量激活前瞻推演、步骤可观测微反馈、缺陷连带清零与双轨结构化看板。

---

### 机制二：技术栈作用域隔离 (Tech-Stack Scoping)
- **痛点**：避免 Python 提炼的习惯（如加 Type Hints）无脑污染 C++ 嵌入式工程或前端 Vue 项目。
- **规范**：规则标题支持标注适用范围 `[Scope: <tags>]`：
  - `[Scope: global]`（默认）：所有技术栈、所有项目通用（如过程反馈、双轨看板）；
  - `[Scope: python]`：仅当项目包含 `.py`、`requirements.txt` 或当前正在操作 Python 代码时生效；
  - `[Scope: frontend]`：仅当涉及 HTML/CSS/JS/TS/Vue/React 时生效。
- **执行规则**：AI 在读取习惯库时，自动根据当前工程特征进行**静默作用域过滤**，杜绝语境中毒。

---

### 机制三：提炼时旧习惯健康度巡检 (Habit Health & Stale Audit)
- **交互创新**：当用户手动触发“提炼对话习惯”时，AI 不仅做“增量审查”，同时对已有习惯进行**健康度回检与优化体检**。
- **输出呈现**：在提交用户的提炼报告中单列【现有习惯体检建议】：
  ```markdown
  ### 📊 现有习惯健康度巡检与优化建议
  - 💡 **建议优化**：发现第 2 条规则与近期高频出现的“TS 语法”可以合并，建议升维提炼；
  - ⏳ **疑似陈旧**：第 5 条规则针对的框架特性已升级，是否顺便将其归档？
  ```

---

### 机制四：原子临时写入与并发防撕裂 (Atomic Temp-Rename)
- **痛点**：多窗口、多 Agent 后台并发修改 `habits.md` 时可能发生写冲突或文件损毁。
- **防撕裂协议**：
  1. 写入时先落盘至同目录下的临时文件：`habits.md.tmp`；
  2. 写入完成且校验非空后，通过操作系统级原子操作（Atomic Rename/Replace）覆盖正式文件；
  3. 彻底避免文件截断或部分写入（Torn Write）。

---

## 3. 六维领域体系 (Domain Taxonomy v2.1)

1. 🧠 **`[DOMAIN: COGNITION]` 认知推演与设计前瞻**（重任务主动多想 1~2 步，推演盲区）
2. 🛡️ **`[DOMAIN: DEFECT]` 缺陷修复与防线规范**（连锁确凿缺陷清零）
3. 📡 **`[DOMAIN: PROGRESS]` 运行过程与意图自适应**（微任务极速直出，重任务步骤心跳）
4. 📊 **`[DOMAIN: DELIVERY]` 终态交付展示规范**（双轨结构化看板）
5. 🌐 **`[DOMAIN: DOCS]` 工程资产与文档规范**（开源项目中英双语）
6. 🚫 **`[DOMAIN: FORBIDDEN]` 红线禁忌与反模式防线**（绝对禁止的反模式）
