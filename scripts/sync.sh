#!/usr/bin/env bash
set -e

TARGET=${1:-"install-global"}
FILE_PATH=${2:-""}
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
HABITS_FILE="$HOME/.habit-distiller/habits.md"

echo "=== Habit Distiller 跨机同步与管理工具 (Bash) ==="

case "$TARGET" in
    "install-global")
        mkdir -p "$HOME/.gemini/config/skills/habit-distiller"
        cp -r "$REPO_ROOT/skills/habit-distiller/"* "$HOME/.gemini/config/skills/habit-distiller/"
        echo " [OK] 已挂载至 Antigravity"

        if [ -d "$HOME/.claude" ]; then
            mkdir -p "$HOME/.claude/skills/habit-distiller"
            cp -r "$REPO_ROOT/skills/habit-distiller/"* "$HOME/.claude/skills/habit-distiller/"
            echo " [OK] 已挂载至 Claude Code"
        fi

        mkdir -p "$HOME/.habit-distiller"
        if [ ! -f "$HABITS_FILE" ]; then
            cp "$REPO_ROOT/presets/proactive-exploration.md" "$HABITS_FILE"
            echo " [OK] 已初始化: $HABITS_FILE"
        fi
        ;;
    "export")
        DEST_FILE=${FILE_PATH:-"./my-habits-export.md"}
        if [ ! -f "$HABITS_FILE" ]; then
            echo "错误: 未找到 $HABITS_FILE"
            exit 1
        fi
        cp "$HABITS_FILE" "$DEST_FILE"
        echo "SUCCESS: 已导出习惯至 $DEST_FILE"
        ;;
    "import")
        if [ -z "$FILE_PATH" ] || [ ! -f "$FILE_PATH" ]; then
            echo "错误: 请指定有效的导入文件路径，例如: ./scripts/sync.sh import ./my-habits-export.md"
            exit 1
        fi
        mkdir -p "$HOME/.habit-distiller"
        if [ -f "$HABITS_FILE" ]; then
            cp "$HABITS_FILE" "$HABITS_FILE.bak"
            echo " [OK] 现有配置已备份至 $HABITS_FILE.bak"
        fi
        cp "$FILE_PATH" "$HABITS_FILE"
        echo "SUCCESS: 导入成功！已更新至 $HABITS_FILE"
        ;;
    *)
        echo "未知目标: $TARGET. 支持: install-global, export, import"
        ;;
esac
