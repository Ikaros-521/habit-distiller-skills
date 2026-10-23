param(
    [string]$Target = "install-global",
    [string]$FilePath = ""
)

$RepoRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$SkillSource = Join-Path $RepoRoot "skills\habit-distiller"
$HabitsConfigFile = "$HOME\.habit-distiller\habits.md"

Write-Host "=== Habit Distiller Portable Sync & Management Tool ===" -ForegroundColor Cyan

switch ($Target.ToLower()) {
    "install-global" {
        $GeminiSkillDest = "$HOME\.gemini\config\skills\habit-distiller"
        if (-not (Test-Path $GeminiSkillDest)) {
            New-Item -ItemType Directory -Path $GeminiSkillDest -Force | Out-Null
        }
        Copy-Item -Path "$SkillSource\*" -Destination $GeminiSkillDest -Recurse -Force
        Write-Host "SUCCESS: Mounted to Antigravity global skill directory: $GeminiSkillDest" -ForegroundColor Green

        if (Test-Path "$HOME\.claude") {
            $ClaudeSkillDest = "$HOME\.claude\skills\habit-distiller"
            if (-not (Test-Path $ClaudeSkillDest)) {
                New-Item -ItemType Directory -Path $ClaudeSkillDest -Force | Out-Null
            }
            Copy-Item -Path "$SkillSource\*" -Destination $ClaudeSkillDest -Recurse -Force
            Write-Host "SUCCESS: Mounted to Claude Code global skill directory: $ClaudeSkillDest" -ForegroundColor Green
        }

        $HabitsConfigDir = "$HOME\.habit-distiller"
        if (-not (Test-Path $HabitsConfigDir)) {
            New-Item -ItemType Directory -Path $HabitsConfigDir -Force | Out-Null
        }
        if (-not (Test-Path $HabitsConfigFile)) {
            Write-Host "Initializing default habits.md from presets..." -ForegroundColor Yellow
            Copy-Item (Join-Path $RepoRoot "presets\proactive-exploration.md") $HabitsConfigFile -Force
            Write-Host "SUCCESS: Initialized profile: $HabitsConfigFile" -ForegroundColor Green
        } else {
            Write-Host "INFO: Existing profile preserved: $HabitsConfigFile" -ForegroundColor Cyan
        }
        Write-Host "SUCCESS: Global setup completed successfully!" -ForegroundColor Green
    }

    "export" {
        if (-not (Test-Path $HabitsConfigFile)) {
            Write-Error "Profile file not found: $HabitsConfigFile"
            return
        }
        $DestFile = if ($FilePath) { $FilePath } else { ".\my-habits-export.md" }
        Copy-Item -Path $HabitsConfigFile -Destination $DestFile -Force
        Write-Host "SUCCESS: Exported personal habits to: $DestFile" -ForegroundColor Green
        Write-Host "Tip: You can transfer this file to another machine and run: .\scripts\sync.ps1 -Target import -FilePath $DestFile" -ForegroundColor Gray
    }

    "import" {
        if (-not $FilePath -or -not (Test-Path $FilePath)) {
            Write-Error "Please provide a valid file path to import, e.g.: .\scripts\sync.ps1 -Target import -FilePath .\my-habits-export.md"
            return
        }
        $HabitsConfigDir = "$HOME\.habit-distiller"
        if (-not (Test-Path $HabitsConfigDir)) {
            New-Item -ItemType Directory -Path $HabitsConfigDir -Force | Out-Null
        }
        if (Test-Path $HabitsConfigFile) {
            Copy-Item $HabitsConfigFile "$HabitsConfigFile.bak" -Force
            Write-Host "INFO: Backed up existing profile to: $HabitsConfigFile.bak" -ForegroundColor Gray
        }
        Copy-Item -Path $FilePath -Destination $HabitsConfigFile -Force
        Write-Host "SUCCESS: Imported successfully! Updated profile: $HabitsConfigFile" -ForegroundColor Green
    }

    Default {
        Write-Warning "Unknown target: $Target. Available: install-global, export, import"
    }
}
