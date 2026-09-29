# lorekeeper installer - Windows (PowerShell)
# Copies the lorekeeper skill folder into your assistant's skills directory.
# It copies only. It changes nothing else.

$ErrorActionPreference = "Stop"

$RepoUrl = if ($env:REPO_URL) { $env:REPO_URL } else { "https://github.com/a42599-blip/lorekeeper.git" }
$TargetDir = if ($env:SKILLS_DIR) { $env:SKILLS_DIR } else { Join-Path $HOME ".agents\skills" }
$Destination = Join-Path $TargetDir "lorekeeper"

Write-Host "lorekeeper installer"
Write-Host "  target: $Destination"

if (Test-Path $Destination) {
    Write-Host "  ! already exists - updating instead"
    $tmp = "$Destination.tmp"
    if (Test-Path $tmp) { Remove-Item -Recurse -Force $tmp }
    git clone --depth 1 $RepoUrl $tmp
    Remove-Item -Recurse -Force $Destination
    Move-Item $tmp $Destination
} else {
    New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
    git clone --depth 1 $RepoUrl $Destination
}

if (-not (Test-Path (Join-Path $Destination "SKILL.md"))) {
    Write-Host "  x SKILL.md not found - the copy did not work"
    exit 1
}

Write-Host "  done."
Write-Host ""
Write-Host "Next: restart your assistant (or reload skills), then ask it:"
Write-Host '  "What do you know about me?"'
Write-Host ""
$memory = if ($env:LOREKEEPER_HOME) { $env:LOREKEEPER_HOME } else { Join-Path $HOME ".lorekeeper" }
Write-Host "Memory will be kept in: $memory"
