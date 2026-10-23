#!/usr/bin/env bash
set -e

TARGET=${1:-"install-global"}
PARAM_TWO=${2:-""}
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
HABITS_DIR="$HOME/.habit-distiller"
HABITS_FILE="$HABITS_DIR/habits.md"
PROFILES_DIR="$HABITS_DIR/profiles"

echo "=== Habit Distiller 跨机同步与管理工具 (v2.5) ==="

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

        mkdir -p "$HABITS_DIR"
        mkdir -p "$PROFILES_DIR"

        if [ -d "$REPO_ROOT/profiles" ]; then
            for f in "$REPO_ROOT"/profiles/*.md; do
                [ -e "$f" ] || continue
                filename=$(basename "$f")
                if [ ! -f "$PROFILES_DIR/$filename" ]; then
                    cp "$f" "$PROFILES_DIR/$filename"
                    echo " [OK] 已初始化预设档案: $filename"
                fi
            done
        fi

        if [ ! -f "$HABITS_FILE" ]; then
            if [ -f "$REPO_ROOT/profiles/open-source.md" ]; then
                cp "$REPO_ROOT/profiles/open-source.md" "$HABITS_FILE"
            else
                cp "$REPO_ROOT/presets/proactive-exploration.md" "$HABITS_FILE"
            fi
            echo " [OK] 已初始化真相源: $HABITS_FILE"
        fi
        ;;

    "switch-profile")
        PROFILE_NAME="$PARAM_TWO"
        if [ -z "$PROFILE_NAME" ]; then
            echo "错误: 请指定档案名称，例如: ./scripts/sync.sh switch-profile open-source"
            exit 1
        fi
        TARGET_FILE="$PROFILES_DIR/$PROFILE_NAME.md"
        if [ ! -f "$TARGET_FILE" ]; then
            echo "错误: 未找到档案 $TARGET_FILE"
            exit 1
        fi
        if [ -f "$HABITS_FILE" ]; then
            cp "$HABITS_FILE" "$HABITS_FILE.bak"
            echo " [OK] 已创建原子备份: $HABITS_FILE.bak"
        fi
        cp "$TARGET_FILE" "$HABITS_FILE"
        echo "SUCCESS: 已成功无缝切换至档案 [$PROFILE_NAME]"
        ;;

    "list-profiles")
        if [ ! -d "$PROFILES_DIR" ]; then
            echo "提示: 档案目录不存在: $PROFILES_DIR"
            exit 0
        fi
        echo "--- 本机可用习惯档案列表 ---"
        for f in "$PROFILES_DIR"/*.md; do
            [ -e "$f" ] || continue
            echo " - $(basename "$f" .md)"
        done
        ;;

    "save-profile")
        PROFILE_NAME="$PARAM_TWO"
        if [ -z "$PROFILE_NAME" ]; then
            echo "错误: 请指定保存的档案名称，例如: ./scripts/sync.sh save-profile my-work"
            exit 1
        fi
        mkdir -p "$PROFILES_DIR"
        cp "$HABITS_FILE" "$PROFILES_DIR/$PROFILE_NAME.md"
        echo "SUCCESS: 已将当前习惯保存为档案 [$PROFILE_NAME]"
        ;;

    "export")
        DEST_FILE=${PARAM_TWO:-"./my-habits-export.md"}
        if [ ! -f "$HABITS_FILE" ]; then
            echo "错误: 未找到 $HABITS_FILE"
            exit 1
        fi
        cp "$HABITS_FILE" "$DEST_FILE"
        echo "SUCCESS: 已导出习惯至 $DEST_FILE"
        ;;

    "import")
        if [ -z "$PARAM_TWO" ] || [ ! -f "$PARAM_TWO" ]; then
            echo "错误: 请指定有效的导入文件路径，例如: ./scripts/sync.sh import ./my-habits-export.md"
            exit 1
        fi
        mkdir -p "$HABITS_DIR"
        if [ -f "$HABITS_FILE" ]; then
            cp "$HABITS_FILE" "$HABITS_FILE.bak"
            echo " [OK] 现有配置已备份至 $HABITS_FILE.bak"
        fi
        cp "$PARAM_TWO" "$HABITS_FILE"
        echo "SUCCESS: 导入成功！已更新至 $HABITS_FILE"
        ;;

    *)
        echo "未知目标: $TARGET. 支持: install-global, switch-profile, list-profiles, save-profile, export, import"
        ;;
esac
