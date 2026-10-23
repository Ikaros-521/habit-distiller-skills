---
name: habit-distiller
description: >-
  通用个人习惯提炼与规则分发框架。通过 4D 矩阵逆向分析对话历史与返工痛点，
  提炼开发者专属的开发与交互习惯，并自动将规范（如缺陷连带修复、过程微反馈、双轨看板、双语文档）
  安全持久化分发至各大 AI IDE（Antigravity, Claude Code, Codex, ZCode, Qoder, Cursor, Trae, dsh 等）。
---

# Habit Distiller (通用习惯提炼与规则管理技能)

本 Skill 旨在解决人机协同过程中的“反复纠偏”与“返工成本”痛点。通过对交互历史进行逆向特征提取，将隐性的个人开发习惯沉淀为显性、严谨的跨 IDE 规则。

---

## 核心架构与解耦机制 (Decoupled Architecture)

```mermaid
graph TD
    subgraph 引擎与模板 (公开开源)
        A["1. 提炼引擎 (core/): 4D 习惯矩阵与分析 SOP"]
        B["2. IDE 模板插槽 (adapters/): 纯净模板与扩展槽位"]
        C["3. 推荐预设库 (presets/): Bug Sweep, Observable Progress, Bilingual Docs 等"]
    end

    subgraph 本地私有数据隔离 (Local Private, Git-ignored)
        D["开发者个人配置 (profiles/ 或 本机全局规则 ~/.gemini/GEMINI.md)"]
    end

    A --> D
    C --> D
    D --> B
```

1. **引擎核心 (Core)**：通用的反向提取元提示词，负责从交互历史中抽离返工原因与行为偏好。
2. **预设库 (Presets)**：经过业界验证的高质量通用工程实践模块（如连锁缺陷清零、过程透明、双语文档等），开发者可按需勾选挂载。
3. **IDE 适配模板 (Adapters)**：面向 11+ 款主流 AI IDE 的标准格式模板。
4. **私有配置隔离 (Privacy First)**：个人专属的私有指令与敏感偏好仅保存在本地（如 `profiles/` 目录已被 `.gitignore` 彻底隔离，或保存在本机全局配置中），绝不上云。

---

## 工作流与执行步骤

1. **对话分析**：审查近期交互中用户的纠偏动作、AI 的返工记录与格式偏好。
2. **规则提炼**：按“规则名称、触发条件、执行边界”生成原子化规则草案。
3. **审核与挂载**：经用户批准后，编译写入本地 IDE 配置文件或注入全局规则。
