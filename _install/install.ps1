# lorekeeper one-line installer (Windows PowerShell)
#
#   irm https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.ps1 | iex
#
# No git required. It does one thing: copies the lorekeeper skill folder into your
# assistant's skills directory. Nothing else is touched.
# Change the location with:  $env:SKILLS_DIR = "D:\your\path"   before running.
# (This file is ASCII-only on purpose, so it works no matter what text encoding
#  the user's PowerShell uses.)

$ErrorActionPreference = "Stop"

$Repo = "a42599-blip/lorekeeper"
$Branch = "main"
$TargetDir = if ($env:SKILLS_DIR) { $env:SKILLS_DIR } else { Join-Path $HOME ".agents\skills" }
$Dest = Join-Path $TargetDir "lorekeeper"
$KeepTmp = ($env:KEEP_TMP -eq "1")

$Tmp = Join-Path $env:TEMP ("lorekeeper-" + [guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Force -Path $Tmp | Out-Null

Write-Host ""
Write-Host "  lorekeeper installer"
Write-Host "  target: $Dest"
Write-Host ""

$Zip = Join-Path $Tmp "main.zip"
$Url = "https://github.com/$Repo/archive/refs/heads/$Branch.zip"
Invoke-WebRequest -Uri $Url -OutFile $Zip -UseBasicParsing
Expand-Archive -Path $Zip -DestinationPath $Tmp -Force

$Src = Join-Path $Tmp "lorekeeper-$Branch"
if (-not (Test-Path $Src)) {
  Write-Host "  x extracted folder not found - the download may be incomplete."
  exit 1
}

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
if (Test-Path $Dest) { Remove-Item -Recurse -Force $Dest }
Move-Item $Src $Dest

if (-not (Test-Path (Join-Path $Dest "SKILL.md"))) {
  Write-Host "  x install failed: SKILL.md not found"
  exit 1
}
if (-not $KeepTmp) { Remove-Item -Recurse -Force $Tmp }

Write-Host "  OK installed: $Dest"
Write-Host ""
Write-Host "  Next two steps:"
Write-Host "    1. restart your AI assistant (or reload skills)"
Write-Host '    2. tell it: "use the lorekeeper skill"'
Write-Host ""
$mem = if ($env:LOREKEEPER_HOME) { $env:LOREKEEPER_HOME } else { Join-Path $HOME ".lorekeeper" }
Write-Host "  Memory folder: $mem"
Write-Host "  To remove: delete the folder $Dest"
Write-Host ""
