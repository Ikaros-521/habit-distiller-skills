param(
    [string]$Target = "install-global",
    [string]$FilePath = "",
    [string]$ProfileName = ""
)

$RepoRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$SkillSource = Join-Path $RepoRoot "skills\habit-distiller"
$HabitsConfigDir = "$HOME\.habit-distiller"
$HabitsConfigFile = "$HabitsConfigDir\habits.md"
$ProfilesDir = "$HabitsConfigDir\profiles"

Write-Host "=== Habit Distiller Portable Sync & Management Tool (v2.6) ===" -ForegroundColor Cyan

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

        if (-not (Test-Path $HabitsConfigDir)) {
            New-Item -ItemType Directory -Path $HabitsConfigDir -Force | Out-Null
        }
        if (-not (Test-Path $ProfilesDir)) {
            New-Item -ItemType Directory -Path $ProfilesDir -Force | Out-Null
        }

        # Sync public curated profiles to user directory
        $RepoProfiles = Join-Path $RepoRoot "profiles"
        if (Test-Path $RepoProfiles) {
            Get-ChildItem -Path $RepoProfiles -Filter "*.md" | ForEach-Object {
                $DestProfile = Join-Path $ProfilesDir $_.Name
                if (-not (Test-Path $DestProfile)) {
                    Copy-Item $_.FullName $DestProfile -Force
                    Write-Host "INFO: Initialized profile: $($_.Name)" -ForegroundColor Cyan
                }
            }
        }

        if (-not (Test-Path $HabitsConfigFile)) {
            Write-Host "Initializing default habits.md from open-source preset..." -ForegroundColor Yellow
            $DefaultSource = Join-Path $RepoRoot "profiles\open-source.md"
            if (-not (Test-Path $DefaultSource)) {
                $DefaultSource = Join-Path $RepoRoot "presets\proactive-exploration.md"
            }
            Copy-Item $DefaultSource $HabitsConfigFile -Force
            Write-Host "SUCCESS: Initialized profile: $HabitsConfigFile" -ForegroundColor Green
        } else {
            Write-Host "INFO: Existing profile preserved: $HabitsConfigFile" -ForegroundColor Cyan
        }
        Write-Host "SUCCESS: Global setup completed successfully!" -ForegroundColor Green
    }

    "init-workspace" {
        $SelectedProfile = if ($ProfileName) { $ProfileName } else { "default" }
        $WorkspaceConfigFile = ".\.habit-profile"
        $ConfigContent = "profile: $SelectedProfile`n"
        Set-Content -Path $WorkspaceConfigFile -Value $ConfigContent -Encoding UTF8 -Force
        Write-Host "SUCCESS: Created workspace profile pointer: $WorkspaceConfigFile (Profile: $SelectedProfile)" -ForegroundColor Green

        # Zero pollution: register into .git/info/exclude
        if (Test-Path ".\.git\info") {
            $ExcludeFile = ".\.git\info\exclude"
            $CurrentExclude = if (Test-Path $ExcludeFile) { Get-Content $ExcludeFile -Raw } else { "" }
            if ($CurrentExclude -notmatch "\.habit-profile") {
                Add-Content -Path $ExcludeFile -Value "`n# Zero-pollution habit profile`n.habit-profile`n" -Force
                Write-Host "SUCCESS: Safely added .habit-profile to .git/info/exclude (0% repo pollution!)" -ForegroundColor Green
            }
        }
    }

    "switch-profile" {
        if (-not $ProfileName) {
            Write-Error "Please specify a profile name: .\scripts\sync.ps1 -Target switch-profile -ProfileName <name>"
            return
        }
        $TargetFile = Join-Path $ProfilesDir "$ProfileName.md"
        if (-not (Test-Path $TargetFile)) {
            Write-Error "Profile not found: $TargetFile. Use -Target list-profiles to inspect available profiles."
            return
        }
        if (Test-Path $HabitsConfigFile) {
            Copy-Item $HabitsConfigFile "$HabitsConfigFile.bak" -Force
            Write-Host "INFO: Created atomic backup at: $HabitsConfigFile.bak" -ForegroundColor Gray
        }
        Copy-Item $TargetFile $HabitsConfigFile -Force
        Write-Host "SUCCESS: Switched active habits to profile: [$ProfileName]" -ForegroundColor Green
        Write-Host "TIP: If other IDE windows (Cursor/Trae) are running, start a new turn to load updated habits." -ForegroundColor Yellow
    }

    "list-profiles" {
        if (-not (Test-Path $ProfilesDir)) {
            Write-Warning "Profiles directory does not exist: $ProfilesDir"
            return
        }
        Write-Host "--- Available Profiles in $ProfilesDir ---" -ForegroundColor Yellow
        Get-ChildItem -Path $ProfilesDir -Filter "*.md" | ForEach-Object {
            Write-Host " - $($_.BaseName)" -ForegroundColor Cyan
        }
    }

    "save-profile" {
        if (-not $ProfileName) {
            Write-Error "Please specify a profile name: .\scripts\sync.ps1 -Target save-profile -ProfileName <name>"
            return
        }
        if (-not (Test-Path $HabitsConfigFile)) {
            Write-Error "Active habits file not found: $HabitsConfigFile"
            return
        }
        if (-not (Test-Path $ProfilesDir)) {
            New-Item -ItemType Directory -Path $ProfilesDir -Force | Out-Null
        }
        $TargetFile = Join-Path $ProfilesDir "$ProfileName.md"
        Copy-Item $HabitsConfigFile $TargetFile -Force
        Write-Host "SUCCESS: Saved current active habits as profile: [$ProfileName] -> $TargetFile" -ForegroundColor Green
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
        Write-Warning "Unknown target: $Target. Available: install-global, init-workspace, switch-profile, list-profiles, save-profile, export, import"
    }
}
