param(
    [string]$Target = "global-gemini",
    [string]$ProjectPath = ""
)

$RepoRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$GeminiAdapter = Join-Path $RepoRoot "adapters\gemini.md"
$SkillSource = Join-Path $RepoRoot "skills\habit-distiller"

Write-Host "=== Habit Distiller Rule Sync Tool ===" -ForegroundColor Cyan

switch ($Target.ToLower()) {
    "global-gemini" {
        $DestDir = "$HOME\.gemini"
        $DestRule = Join-Path $DestDir "GEMINI.md"
        $DestSkill = "$HOME\.gemini\config\skills\habit-distiller"

        Write-Host "Syncing skill to global Antigravity / Gemini..." -ForegroundColor Yellow

        # Sync Skill
        if (-not (Test-Path $DestSkill)) {
            New-Item -ItemType Directory -Path $DestSkill -Force | Out-Null
        }
        Copy-Item -Path "$SkillSource\*" -Destination $DestSkill -Recurse -Force
        Write-Host "SUCCESS: Synced skill directory: $DestSkill" -ForegroundColor Green

        # Only create default GEMINI.md if it doesn't already exist
        if (-not (Test-Path $DestRule)) {
            $Content = [System.IO.File]::ReadAllText($GeminiAdapter, [System.Text.Encoding]::UTF8)
            $Pattern = '(?s)```markdown\r?\n(.*?)\r?\n```'
            if ($Content -match $Pattern) {
                [System.IO.File]::WriteAllText($DestRule, $matches[1].Trim(), [System.Text.Encoding]::UTF8)
                Write-Host "SUCCESS: Initialized global rule: $DestRule" -ForegroundColor Green
            }
        } else {
            Write-Host "INFO: Existing $DestRule preserved (user personal rules protected)." -ForegroundColor Cyan
        }
    }
    "project" {
        if (-not $ProjectPath) {
            Write-Error "Please specify -ProjectPath parameter."
            return
        }
        Write-Host "Syncing all IDE template rules to target project: $ProjectPath" -ForegroundColor Yellow

        function Deploy-RuleFile($SrcName, $DestRelPath) {
            $SrcPath = Join-Path $RepoRoot "adapters\$SrcName"
            $DestFullPath = Join-Path $ProjectPath $DestRelPath
            $DestDir = Split-Path -Parent $DestFullPath
            if ($DestDir -and -not (Test-Path $DestDir)) {
                New-Item -ItemType Directory -Path $DestDir -Force | Out-Null
            }
            Copy-Item $SrcPath $DestFullPath -Force
            Write-Host " -> Deployed $DestRelPath" -ForegroundColor Gray
        }

        Deploy-RuleFile "claude.md" "CLAUDE.md"
        Deploy-RuleFile "cursor.md" ".cursorrules"
        Deploy-RuleFile "windsurf.md" ".windsurfrules"
        Deploy-RuleFile "trae.md" ".trae\rules.md"
        Deploy-RuleFile "zcode.md" ".zcode\rules.md"
        Deploy-RuleFile "qoder.md" ".qoderules"
        Deploy-RuleFile "dsh.md" ".dsh\rules.md"
        Deploy-RuleFile "opencode.md" ".opencode\rules.md"
        Deploy-RuleFile "pi.md" ".pi\rules.md"
        Deploy-RuleFile "codex.md" ".github\copilot-instructions.md"

        Write-Host "SUCCESS: All AI IDE template rules dispatched successfully to $ProjectPath!" -ForegroundColor Green
    }
    Default {
        Write-Warning "Unknown target: $Target. Available: global-gemini, project"
    }
}
