param(
    [string]$Target = "install-global"
)

$RepoRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$SkillSource = Join-Path $RepoRoot "skills\habit-distiller"

Write-Host "=== Habit Distiller Rule Management Tool ===" -ForegroundColor Cyan

switch ($Target.ToLower()) {
    "install-global" {
        # 1. Antigravity Global Skill
        $GeminiSkillDest = "$HOME\.gemini\config\skills\habit-distiller"
        if (-not (Test-Path $GeminiSkillDest)) {
            New-Item -ItemType Directory -Path $GeminiSkillDest -Force | Out-Null
        }
        Copy-Item -Path "$SkillSource\*" -Destination $GeminiSkillDest -Recurse -Force
        Write-Host "SUCCESS: Mounted to Antigravity global skill directory: $GeminiSkillDest" -ForegroundColor Green

        # 2. Claude Code Global Skill
        if (Test-Path "$HOME\.claude") {
            $ClaudeSkillDest = "$HOME\.claude\skills\habit-distiller"
            if (-not (Test-Path $ClaudeSkillDest)) {
                New-Item -ItemType Directory -Path $ClaudeSkillDest -Force | Out-Null
            }
            Copy-Item -Path "$SkillSource\*" -Destination $ClaudeSkillDest -Recurse -Force
            Write-Host "SUCCESS: Mounted to Claude Code global skill directory: $ClaudeSkillDest" -ForegroundColor Green
        }

        # 3. Initialize ~/.habit-distiller/habits.md if absent
        $HabitsConfigDir = "$HOME\.habit-distiller"
        $HabitsConfigFile = Join-Path $HabitsConfigDir "habits.md"
        if (-not (Test-Path $HabitsConfigDir)) {
            New-Item -ItemType Directory -Path $HabitsConfigDir -Force | Out-Null
        }
        if (-not (Test-Path $HabitsConfigFile)) {
            Write-Host "Initializing default habits.md from presets..." -ForegroundColor Yellow
            $DefaultLines = @(
                "# Personal Habits Profile",
                "> Managed independently by habit-distiller as single source of truth.",
                "> Zero pollution to project repositories or native IDE rule files.",
                "",
                "## 1. Defect Sweep Protocol",
                "- Chain Bug Sweep: Automatically resolve confirmed collateral defects safely.",
                "",
                "## 2. Observable Progress Feedback",
                "- Emit step-by-step progress feedback during multi-step runs.",
                "",
                "## 3. Dual-Track Delivery Dashboard",
                "- Conclude tasks with Before/After tables and structured status dashboards.",
                "",
                "## 4. Bilingual Documentation Protocol",
                "- Maintain symmetrical bilingual READMEs (Chinese default + English) for open-source repositories."
            )
            [System.IO.File]::WriteAllLines($HabitsConfigFile, $DefaultLines, [System.Text.Encoding]::UTF8)
            Write-Host "SUCCESS: Initialized profile: $HabitsConfigFile" -ForegroundColor Green
        } else {
            Write-Host "INFO: Existing profile preserved: $HabitsConfigFile" -ForegroundColor Cyan
        }

        Write-Host "SUCCESS: Global zero-intrusion setup completed successfully!" -ForegroundColor Green
    }
    Default {
        Write-Warning "Unknown target: $Target. Supported: install-global"
    }
}
