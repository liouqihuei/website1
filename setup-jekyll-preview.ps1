# Jekyll local preview setup (Windows)
# Run in PowerShell (as Admin): .\setup-jekyll-preview.ps1

$ErrorActionPreference = "Stop"
$ProjectRoot = $PSScriptRoot
$RubyInstallerUrl = "https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.2.6-1/rubyinstaller-devkit-3.2.6-1-x64.exe"
$RubyInstallerExe = "$env:TEMP\rubyinstaller-devkit-3.2.6-1-x64.exe"

Write-Host "=== Jekyll Local Preview Setup ===" -ForegroundColor Cyan
Write-Host ""

$rubyPath = Get-Command ruby -ErrorAction SilentlyContinue
if ($rubyPath) {
    Write-Host "[OK] Ruby found: $(ruby --version)" -ForegroundColor Green
} else {
    Write-Host "[1/4] Downloading Ruby+Devkit..." -ForegroundColor Yellow
    try {
        Invoke-WebRequest -Uri $RubyInstallerUrl -OutFile $RubyInstallerExe -UseBasicParsing
    } catch {
        Write-Host "Download failed. Please install Ruby+Devkit from: https://rubyinstaller.org/downloads/" -ForegroundColor Red
        exit 1
    }
    Write-Host "[2/4] Installing Ruby (silent)..." -ForegroundColor Yellow
    Start-Process -FilePath $RubyInstallerExe -ArgumentList "/VERYSILENT", "/NORESTART" -Wait
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
    $rubyPath = Get-Command ruby -ErrorAction SilentlyContinue
    if (-not $rubyPath) {
        Write-Host "Ruby installed. Please close this window, open a NEW PowerShell, cd to this folder, then run: .\run-preview.ps1" -ForegroundColor Green
        exit 0
    }
}

Write-Host "[3/4] Installing Bundler and project gems..." -ForegroundColor Yellow
Set-Location $ProjectRoot
gem install bundler --no-document
bundle config set --local path 'vendor/bundle'
bundle install

Write-Host "[4/4] Starting Jekyll. Open in browser: http://localhost:4000 (Press Ctrl+C to stop)" -ForegroundColor Green
Write-Host ""
bundle exec jekyll serve
