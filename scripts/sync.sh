#!/usr/bin/env bash
set -e

TARGET=${1:-"install-global"}
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "=== Habit Distiller 零侵入全局挂载工具 (Bash) ==="

case "$TARGET" in
    "install-global")
        # 1. Antigravity / Gemini
        GEMINI_SKILL="$HOME/.gemini/config/skills/habit-distiller"
        mkdir -p "$GEMINI_SKILL"
        cp -r "$REPO_ROOT/skills/habit-distiller/"* "$GEMINI_SKILL/"
        echo " [OK] 已挂载至 Antigravity: $GEMINI_SKILL"

        # 2. Claude Code
        if [ -d "$HOME/.claude" ]; then
            CLAUDE_SKILL="$HOME/.claude/skills/habit-distiller"
            mkdir -p "$CLAUDE_SKILL"
            cp -r "$REPO_ROOT/skills/habit-distiller/"* "$CLAUDE_SKILL/"
            echo " [OK] 已挂载至 Claude Code: $CLAUDE_SKILL"
        fi

        # 3. 初始化独立真相源 ~/.habit-distiller/habits.md
        HABITS_DIR="$HOME/.habit-distiller"
        HABITS_FILE="$HABITS_DIR/habits.md"
        mkdir -p "$HABITS_DIR"
        if [ ! -f "$HABITS_FILE" ]; then
            cat << 'EOF' > "$HABITS_FILE"
# 开发者个人专属协同习惯 (Personal Habits Profile)
> 本文件由 habit-distiller 独立维护，作为所有 AI IDE 会话共享的单一真相源。
> 绝不侵入、篡改任何项目的代码库或 IDE 原生规则文件。

---

## 1. 缺陷修复与防线规范
- **缺陷连带清零 (Chain Bug Sweep)**：排查中关联确凿缺陷无破坏一并彻底修复。

## 2. 运行过程透明度规范
- **运行过程反馈 (Observable Progress Feedback)**：多步排查与长流程输出关键节点反馈。

## 3. 终态交付展示规范
- **双轨化交付展现 (Dual-Track Delivery Dashboard)**：终态总结采用结构化看板呈现。

## 4. 开源文档国际化规范
- **开源双语文档 (Bilingual README Protocol)**：面向公开开源项目，文档默认中英双语、中文置顶。
EOF
            echo " [OK] 已初始化独立配置文件: $HABITS_FILE"
        else
            echo " [OK] 现有专属习惯文件已保留: $HABITS_FILE"
        fi

        echo "SUCCESS: 全局零侵入部署完成！"
        ;;
    *)
        echo "未知目标: $TARGET"
        ;;
esac
