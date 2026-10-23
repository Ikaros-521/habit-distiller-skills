# Antigravity / Gemini CLI 规则模板 (Template)

- **生效路径**：`~/.gemini/GEMINI.md` (全局) 或项目根目录 `GEMINI.md` / `AGENTS.md`
- **触发机制**：`trigger: always_on`

```markdown
trigger:always_on
alwaysApply: true
---
# 基础工程原则 (Baseline Principles)

**简洁至上**：恪守 KISS 原则，崇尚简洁与可维护性，避免过度工程化与不必要的防御性设计。
**事实为本**：立足于第一性原理分析问题，以事实和测试为依据。

# 提炼出的个人习惯插槽 (Custom Distilled Habits)
<!-- 通过 habit-distiller 提炼或从 presets/ 中选取的规范将自动注入于此 -->

<!-- [PRESET: BUG_SWEEP] -->
**缺陷连带清零**：在排查或修复目标问题时，若确凿发掘出关联缺陷，在严格验证、不破坏现有功能的前提下，一并彻底修复。

<!-- [PRESET: OBSERVABLE_PROGRESS] -->
**运行过程反馈**：在执行多步排查、工具调用时，输出关键步骤节点反馈，确保过程可观测。

<!-- [PRESET: BILINGUAL_DOCS] -->
**开源双语文档**：针对开源至 GitHub 的公开项目，文档默认提供中英双语，中文置顶对齐。

<!-- [PRESET: DUAL_TRACK_DELIVERY] -->
**双轨化交付展现**：终态总结采用结构化看板呈现（修复对比表、验证结果、影响范围）。
```
