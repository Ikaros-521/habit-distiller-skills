# Habit Governor: 习惯生命周期治理与全景防熵增引擎 (v2.0)

本文档定义了 Habit Distiller 如何在提炼与运行个人习惯时进行**冲突仲裁、跨沙箱级联、约束保真合并、红线禁忌防御、写前原子备份与主动纠偏探针**的标准作业程序（SOP）。

---

## 1. 六大核心治理架构 (6-Pillar Governance Architecture)

```mermaid
graph TD
    subgraph 运行态治理 (Runtime Phase)
        A1["1. 规则冲突仲裁器 (Conflict Arbitration)"]
        A2["2. 跨沙箱路径级联解析 (Cascade Path Resolution)"]
        A3["3. 主动纠偏感知探针 (Proactive Distillation Probe)"]
    end

    subgraph 提炼态治理 (Distillation Phase)
        B1["4. 约束保真合并原则 (Constraint Preservation)"]
        B2["5. 红线禁忌专属插槽 (Forbidden Domain)"]
        B3["6. 写前原子备份与容灾 (Atomic Pre-write Backup)"]
    end

    A1 & A2 & A3 --> Habits["单一真相源 (~/.habit-distiller/habits.md)"]
    B1 & B2 & B3 --> Habits
```

---

## 2. 治理机制细则 (Mechanisms Specification)

### 机制一：规则冲突智能仲裁与交互反馈 (Conflict Arbitration)
- **场景**：当个人习惯（如中文交流）与当前项目规则（如团队 `CLAUDE.md` 强制要求英文注释）存在语义互斥时。
- **仲裁逻辑**：AI 严禁擅自做主或产生中英混杂幻觉，必须**主动向用户抛出交互式仲裁卡片**：
  ```markdown
  ⚠️ 检测到规则冲突：
  - 项目规范要求：代码注释与 Commit 必须使用英文 (来自 CLAUDE.md)
  - 个人协同习惯：交流与交付默认使用中文 (来自 habits.md)

  请选择本次处理策略：
  [1] 仅当前会话临时遵从项目规范（单次豁免，不改动个人习惯）
  [2] 调整个人习惯，增加“项目有严格规定时项目规范优先”的长期例外
  [3] 强制坚持个人习惯（由用户自行承担潜在团队冲突）
  ```

---

### 机制二：跨沙箱环境级联探测链 (Cascade Path Resolution)
解决 Docker 容器、远程 SSH、GitHub Codespaces 等无标准用户家目录场景下的丢失问题：
```
[解析顺序]
1. 环境变量: $HABIT_DISTILLER_PATH (若设置则最高优先)
2. 标准家目录: ~/.habit-distiller/habits.md (常规主机环境)
3. 本地工作区私有降级: ./.agents/habits.md (沙箱/临时容器，自动配置本地隔离)
4. 嵌入式默认预设: 内存兜底运行
```

---

### 机制三：约束保真合并原则 (Constraint Preservation)
- **痛点**：防止同类合并时大模型过度抽象，将具体指标蒸发为空洞口号（如把“行数 $\le 50$”和“复杂度 $\le 10$”合并成“写出高质量函数”）。
- **硬性铁律**：
  1. 升维合并只允许提升**分类层级**，严禁剔除**子项细节**；
  2. 原规则中的**量化数字、判定边界、技术术语、特定命令**，必须以子列表项（Sub-bullets）100% 无损携带；
  3. 严禁生成无判定准则的主观口号。

---

### 机制四：红线禁忌专属插槽 (Domain: Forbidden)
- **定义**：专门用于承载**反模式、严禁使用的技术或操作底线**。
- **生效权重**：大模型面对“负向红线”的遵从度最高。此插槽内的规则赋予 `STOP-LEVEL` 最高拦截优先级（如严禁未经询问安装新依赖、严禁生产配置中保留明文密钥等）。

---

### 机制五：写前原子备份与版本管理 (Atomic Pre-write Backup)
- 任何写入、更替或合并前，系统必须自动执行：
  1. 复制生成 `habits.md.bak` 物理镜像；
  2. 在文件头部自增版本时间戳：`<!-- version: X.Y, updated: YYYY-MM-DD HH:mm -->`；
  3. 若写入过程中发生异常，自动以备份恢复，确保 0 坏死率。

---

### 机制六：主动纠偏感知探针 (Proactive Distillation Probe)
- **默认状态**：**默认开启 (Enabled by Default)**。
- **触发条件**：当 AI 在同一会话中检测到用户针对同一问题模式发生 $\ge 2$ 次纠偏纠错时（例如连续两次提醒“不要用 any”或“修 bug 连带修”）。
- **行为表现**：在完成当前修复后，主动追加提示：
  > 💡 *“检测到您已连续针对【类型严谨性】进行了指导，是否需要将此习惯沉淀进您的 habits.md？”*
- **Token 考量与免打扰**：用户可通过在提示词中声明“禁用主动习惯探针”临时静音。

---

## 3. 六维领域插槽 (Domain Taxonomy v2.0)

| 领域插槽 (Domain ID) | 职责与范围 |
| :--- | :--- |
| `[DOMAIN: COGNITION]` | **认知推演与设计前瞻**（主动推演 1~2 步，推演盲区，降低设计缺陷） |
| `[DOMAIN: DEFECT]` | **缺陷修复与防线规范**（连锁确凿缺陷清零，零回归破坏） |
| `[DOMAIN: PROGRESS]` | **运行过程可观测性**（长流程微心跳反馈，拒绝黑盒） |
| `[DOMAIN: DELIVERY]` | **终态交付展示规范**（双轨看板、Before/After 对照表） |
| `[DOMAIN: DOCS]` | **工程资产与文档规范**（开源项目中英双语、中文置顶） |
| `[DOMAIN: FORBIDDEN]` | **红线禁忌与反模式**（绝对禁止的编码惯性、危险操作与架构恶习） |
