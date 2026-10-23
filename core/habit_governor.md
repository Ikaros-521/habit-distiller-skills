# Habit Governor: 习惯生命周期治理与全景防熵增引擎 (v2.9)

本文档定义了 Habit Distiller 如何在提炼与运行个人习惯时进行**骨架大纲无损自愈、回滚透明确认说明、工具异常事实呈现、冲突统一揭示与用户修复仲裁、内存 TTL 缓存零延迟与动态技术栈按需 Scope 激活**的标准作业程序（SOP）。

---

## 1. 核心治理机制架构 (v2.9 Architecture)

```mermaid
graph TD
    subgraph 决策仲裁与人本对齐 (Arbitration & Human-in-the-Loop)
        A1["1. 冲突统一揭示与用户裁决 (Unified Conflict Presentation)"]
        A2["2. 意图不明与负向规则主动反问 (Clarification Counter-Questions)"]
        A3["3. 回滚明确说明与透明确认 (Transparent Rollback Confirmation)"]
        A4["4. 外部工具异常客观呈现与用户自主控制 (Factual Tool Error & User Control)"]
    end

    subgraph 自愈保护与大纲韧性 (Self-Healing & Structural Guard)
        B1["5. 核心六维大纲骨架无损自愈 (Structural Heading Self-Healing)"]
        B2["6. 手工手写规则无损吸纳 (Permissive Self-Healing)"]
        B3["7. 多会话并发写保护 (Timestamp Guard)"]
    end

    subgraph 运行时性能与动态感知 (Runtime Performance & Dynamic Scoping)
        C1["8. 内存 TTL 缓存与零工具延迟 (In-Memory Cache on Fast-Path)"]
        C2["9. 动态技术栈 Scope 按需激活 (Dynamic Language-Scope: go/ts/py)"]
        C3["10. 跨进程运行时缓存失效提示 (Cache Invalidation Notice)"]
    end

    subgraph 档案与生命周期全景 (Profile & Lifecycle)
        D1["11. 多套习惯档案无缝切换与口语化建档 (Multi-Profile & Branching)"]
        D2["12. 临时习惯生命周期与退场 (Habit TTL)"]
        D3["13. 项目级零污染层叠继承 (Workspace Cascade: .habit-profile)"]
        D4["14. 真实事实证据链履约核验 (Fact-Based Compliance Proof)"]
    end

    A1 & A2 & A3 & A4 & B1 & B2 & B3 & C1 & C2 & C3 & D1 & D2 & D3 & D4 --> SingleSource["单一真相源 (~/.habit-distiller/habits.md)"]
```

---

## 2. 自愈保护与大纲韧性机制

### 机制一：核心六维大纲骨架无损自愈 (Structural Heading Self-Healing)
- **痛点**：开发者在宿主机用记事本或编辑器手工编辑 `habits.md` 时，不慎误删了核心大纲标题（如误删 `## 2. 缺陷修复与防线规范 (Domain: Defect)`）。
- **自愈协议**：
  1. AI 读取解析 `habits.md` 时，逐一校验 6 大标准领域插槽（`Cognition`、`Defect`、`Progress`、`Delivery`、`Docs`、`Forbidden`）；
  2. 若检测到某个领域的大纲标题被破坏或缺失，AI 在重新落盘时**自动无损补齐标准大纲标题**；
  3. 用户原有的所有子规则、注释、自定义内容**绝对保持 100% 完好无损**，彻底杜绝大纲破损导致后续插入错位。

---

### 机制二：回滚明确说明与透明确认 (Transparent Rollback Confirmation)
- **第一性原理**：KISS 极简物理回滚，坚决拒绝黑盒级联备份的复杂化；通过**向用户清晰说明**保障确定性。
- **触发指令**：用户发送“撤回刚才的习惯更新”或“恢复上一版习惯”。
- **执行与确认流程**：
  1. 检查 `~/.habit-distiller/habits.md.bak`；
  2. 比对当前版本与备份版本，识别即将撤回的变更项；
  3. 物理原子恢复，并向用户**明确呈现恢复说明卡**：
     > ⏪ *“已为您回滚至上一版快照（备份时间戳: 2026-10-23 19:15）。<br>本次操作已成功撤销【规则名】，其余 5 项习惯完好保留生效。”*

---

### 机制三：外部工具异常客观呈现与用户自主修复 (Factual Tool Error & User Control)
- **准则**：当在执行习惯核验（如跑单元测试 `npm test`）时遇到客观环境崩溃（如端口被占、断网、环境缺失）：
- **行为规范**：
  - AI 绝对禁止因工具报错而慌乱丢弃交付看板或倾倒未加工的异常堆栈；
  - 在交付看板【习惯契约核验】单元格中，**如实客观记录工具报错事实**，并将环境修复掌控权交还给用户：
    > `⚠️ 验证工具受阻：终端执行 npm test 报端口 3000 被占用；已转为纯静态参数流校验（无语法异常），请您在宿主机本地释放端口后复测。`

---

## 3. 决策仲裁与人本对齐机制

### 机制四：冲突统一揭示与用户修复仲裁 (Unified Conflict Resolution)
- **第一性原理**：任何场景下（无论是同一档案内部规则自相矛盾、新提炼规则与既有契约冲突、还是现实对话操作与书面规则背离），**AI 严禁隐式猜测或私自替用户做选择**。
- **统一标准作业流程 (SOP)**：
  AI 必须将冲突的双方及诱因清清楚楚列出，出具选择卡片，交由用户亲自裁决修复：
  ```markdown
  ⚠️ [检测到协同契约冲突]
  - 规则 A: [现有规则 / 描述]
  - 规则 B: [冲突规则 / 描述]
  - 冲突根因: [说明两者的行为逻辑为什么无法同时成立]

  请指示如何修复冲突：
  [1] 保留规则 A，废弃规则 B
  [2] 采纳规则 B，覆盖规则 A
  [3] 明确边界分工：[给出分工建议，如 A 作用于基础底层，B 作用于业务表层]
  ```

---

### 机制五：意图不明与纯负向规则主动反问澄清 (Clarification Counter-Questions)
- 遇到抽象虚词（“更艺术”）或纯负向约束（“不要做 X”），AI 必须向用户**主动反问**，列出 2~3 个具体选项让用户确认（支持“强制写入”逃生）。

---

## 4. 运行时性能与动态感知机制

### 机制六：内存 TTL 缓存与零工具调用延迟 (In-Memory Cache on Fast-Path)
- 普通代码生成与微任务极速直通，**严禁主动调用工具读盘**，秒级极速直出；仅在显式管理口令（查看/切换/提炼）时读取磁盘。

---

### 机制七：动态技术栈 Scope 按需激活 (Dynamic Language-Scope Filtering)
- 根据当前会话操作文件的后缀名，自动动态叠加激活对应语言规则（如编辑 `.go` 文件激活 `[Scope: go]`，未命中语言自动静默）。

---

## 5. 档案全景与生命周期治理细则

### 机制八：口语化新建档案与多档案切换 (Conversational Branching)
- 发送“`保存当前习惯为档案 [名称]`”或“`新建习惯档案 [名称]`”，自动持久化至 `profiles/<name>.md`。
- 发送“`切换习惯 [名称]`”，物理原子替换生效真相源，并附带跨进程缓存失效提示。

### 机制九：临时习惯生命周期与退场 (Habit TTL)
- 战役期规则标注 `[TTL: 7d]`。查询计分卡时若超期，自动提示转正、注销或延期。

### 机制十：项目级零污染层叠继承 (Workspace Cascade)
- 优先读取项目根目录 `.habit-profile`，回退至全局 `~/.habit-distiller/habits.md`。本地私有忽略文件 `.git/info/exclude` 声明，0% 仓库污染。

### 机制十一：真实事实证据链履约核验 (Fact-Based Compliance Proof)
- 交付看板中【习惯契约核验】单元格**必须包含真实查验实据**，严禁空洞打勾、杜绝阳奉阴违。

### 机制十二：冷启动无文件优雅容错 (Graceful Cold-Start)
- `habits.md` 尚未生成时，视为空白基准正常运行，等用户自然发起提炼。
