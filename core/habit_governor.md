# Habit Governor: 习惯生命周期治理与全景防熵增引擎 (v2.3)

本文档定义了 Habit Distiller 如何在提炼与运行个人习惯时进行**手改自愈保护、自然语言一键撤回、长会话低噪音输出、冲突列出对比自选以及弱模型紧凑视图自适应**的标准作业程序（SOP）。

---

## 1. 核心治理机制升级 (v2.3 Architecture)

```mermaid
graph TD
    subgraph 容错与弹性机制 (Resilience & Recovery)
        A1["1. 手动编辑容错与自愈 (Manual Edit Self-Healing)"]
        A2["2. 自然语言一键撤回 (Natural Language Undo)"]
        A3["3. 规则冲突对比自选 (Side-by-Side Conflict Resolution)"]
    end

    subgraph 效能与交互机制 (Efficiency & Presentation)
        B1["4. 长会话低噪音提炼 (Low-Noise Compact Diff)"]
        B2["5. 单一数据双层视图 (Single Source Dual-View for Small Models)"]
    end

    A1 & A2 & A3 --> SingleSource["单一真相源 (~/.habit-distiller/habits.md)"]
    B1 & B2 --> SingleSource
```

---

## 2. 核心机制细则

### 机制一：手动编辑容错与自愈 (Manual Edit Self-Healing)
- **痛点**：开发者用记事本或编辑器手工修改 `habits.md` 时，随手增加的非标准格式行（如缺失标题、漏掉 domain 标签），极易被后续的自动重写抹除。
- **自愈铁律**：
  1. **宽容读取 (Permissive Parsing)**：AI 读取 `habits.md` 时，若发现不符合标准 Markdown 层级的手写内容，一律判定为“用户手工有效项”，**严禁丢弃**；
  2. **智能吸纳 (Graceful Assimilation)**：在下一次通过对话提炼重写文件时，AI 自动根据手写语义将其归纳至对应的六大 Domain 插槽中，规范化格式的同时 **100% 保护手写成果**；
  3. **显式反馈**：保存后提示：*“ℹ️ 检测到您手工修改的 X 条内容，已自动规范化融入对应领域。”*

---

### 机制二：自然语言一键撤回 (One-Click Undo Protocol)
- **触发口令**：用户发送“撤回刚才的习惯更新”、“撤销提炼”、“恢复上一版习惯”或“undo habit”。
- **执行逻辑**：
  1. AI 检查是否存在 `~/.habit-distiller/habits.md.bak`；
  2. 若存在，直接将 `.bak` 镜像物理原子替换回 `habits.md`；
  3. 立即向用户确认：
     > ✅ *“已为您撤销最近一次的习惯提炼，单一真相源已秒级回滚至上一版镜像状态。”*

---

### 机制三：规则冲突并排对比自选 (Side-by-Side Conflict Resolution)
- **场景**：当导入外部习惯包、团队规则（如 `CLAUDE.md`）与个人习惯互斥时。
- **交互规范**：AI 严禁擅自覆盖，必须以**并排对比表格**形式呈现差异，供用户自选：
  ```markdown
  ⚠️ 检测到规则互斥冲突：

  | 冲突维度 | 规范 A (例如：团队规范 CLAUDE.md) | 规范 B (例如：个人习惯 habits.md) |
  | :--- | :--- | :--- |
  | **代码注释语言** | 强制要求英文注释 | 默认中文沟通与注释 |

  请选择您期望的兼容策略（回复数字）：
  [1] 以项目/规范 A 为准（针对本项目临时或持久让步）
  [2] 以个人/规范 B 为准（坚持个人既有习惯）
  [3] 智能折中兼容（例如：代码与注释英文，任务交流与交付总结中文）
  ```

---

### 机制四：长会话低噪音提炼模式 (Low-Noise Compact Distillation)
- **规范**：在长篇代码调试对话中，提炼确认后的回复严禁铺陈满屏 Diff 干扰注意力。
- **输出格式**：聊天主界面仅输出 3 行紧凑结论，详细报表自动折叠收起：
  ```markdown
  ✅ 已完成协同习惯提炼并落盘至 `~/.habit-distiller/habits.md`
  - 核心变更：[DOMAIN: ...] 新增/更新 [规则名称]
  - 容灾状态：写前原子镜像 habits.md.bak 已同步就绪

  <details>
  <summary>🔍 点击展开查看本次治理 Diff 与体检明细</summary>

  [此处折叠渲染完整的四态比对审计表与健康度巡检结果]
  </details>
  ```

---

### 机制五：弱模型/小模型兼容与“单一真相源双层视图”
（详细技术原理解析见下文系统说明）
- 采用 **“单一存储、按需精简渲染 (Single Source, Dual-View Rendering)”**：
  - 物理文件始终保持标准富文本格式；
  - 面向指令遵从能力较弱的小模型（如本地 7B/1.5B 模型），在调用 Skill 时前置通过正则滤除 Mermaid 图表、冗余案例与背景说明，仅动态注入**纯原语原子清单（每条不超过 20 字的 Checklists）**，确保小模型不出现注意力分散或幻觉。
