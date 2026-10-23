#!/usr/bin/env bash
set -e

TARGET=${1:-"global-gemini"}
PROJECT_PATH=${2:-""}

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "=== Habit Distiller Rule Sync Tool (Bash) ==="

case "$TARGET" in
    "global-gemini")
        DEST_DIR="$HOME/.gemini"
        DEST_RULE="$DEST_DIR/GEMINI.md"
        DEST_SKILL="$DEST_DIR/config/skills/habit-distiller"

        echo "Syncing to global Antigravity / Gemini configuration..."
        mkdir -p "$DEST_SKILL"
        sed -n '/```markdown/,/```/p' "$REPO_ROOT/adapters/gemini.md" | sed '1d;$d' > "$DEST_RULE"
        echo " [OK] Updated global rule: $DEST_RULE"
        cp -r "$REPO_ROOT/skills/habit-distiller/"* "$DEST_SKILL/"
        echo " [OK] Synced skill directory: $DEST_SKILL"
        ;;
    "project")
        if [ -z "$PROJECT_PATH" ]; then
            echo "Error: Please specify target project path."
            exit 1
        fi
        echo "Syncing all IDE rules to target project: $PROJECT_PATH"
        
        # 1. Claude Code
        cp "$REPO_ROOT/adapters/claude.md" "$PROJECT_PATH/CLAUDE.md"
        # 2. Cursor
        cp "$REPO_ROOT/adapters/cursor.md" "$PROJECT_PATH/.cursorrules"
        # 3. Windsurf
        cp "$REPO_ROOT/adapters/windsurf.md" "$PROJECT_PATH/.windsurfrules"
        # 4. Trae
        mkdir -p "$PROJECT_PATH/.trae" && cp "$REPO_ROOT/adapters/trae.md" "$PROJECT_PATH/.trae/rules.md"
        # 5. ZCode
        mkdir -p "$PROJECT_PATH/.zcode" && cp "$REPO_ROOT/adapters/zcode.md" "$PROJECT_PATH/.zcode/rules.md"
        # 6. Qoder
        cp "$REPO_ROOT/adapters/qoder.md" "$PROJECT_PATH/.qoderules"
        # 7. dsh
        mkdir -p "$PROJECT_PATH/.dsh" && cp "$REPO_ROOT/adapters/dsh.md" "$PROJECT_PATH/.dsh/rules.md"
        # 8. OpenCode
        mkdir -p "$PROJECT_PATH/.opencode" && cp "$REPO_ROOT/adapters/opencode.md" "$PROJECT_PATH/.opencode/rules.md"
        # 9. Pi
        mkdir -p "$PROJECT_PATH/.pi" && cp "$REPO_ROOT/adapters/pi.md" "$PROJECT_PATH/.pi/rules.md"
        # 10. Codex / Copilot
        mkdir -p "$PROJECT_PATH/.github" && cp "$REPO_ROOT/adapters/codex.md" "$PROJECT_PATH/.github/copilot-instructions.md"

        echo " [OK] All AI IDE rules dispatched successfully!"
        ;;
    *)
        echo "Unknown target: $TARGET"
        ;;
esac
