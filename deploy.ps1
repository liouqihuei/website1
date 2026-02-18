# Deploy to GitHub Pages (liouqihuei/website1)
# Run in project folder: .\deploy.ps1

$ErrorActionPreference = "Stop"
$remote = "https://github.com/liouqihuei/website1.git"

Write-Host ">>> Checking Git..." -ForegroundColor Cyan
$git = Get-Command git -ErrorAction SilentlyContinue
if (-not $git)
{
    Write-Host "Git not found. Install Git or add to PATH." -ForegroundColor Red
    exit 1
}

# Set Git user if not set (needed for first commit)
$email = git config --global user.email 2>$null
$name = git config --global user.name 2>$null
if (-not $email -or -not $name)
{
    Write-Host ">>> Setting Git user (required for commit)..." -ForegroundColor Cyan
    if (-not $email) { git config --global user.email "liuqihui@mail.sim.ac.cn" }
    if (-not $name)  { git config --global user.name "Liu Qihui" }
}

if (-not (Test-Path ".git"))
{
    Write-Host ">>> Init repo..." -ForegroundColor Cyan
    git init
}

$hasOrigin = git remote 2>$null | Select-String -Pattern "origin" -Quiet
if (-not $hasOrigin)
{
    Write-Host ">>> Adding remote origin..." -ForegroundColor Cyan
    git remote add origin $remote
}

Write-Host ">>> Add and commit..." -ForegroundColor Cyan
git add .
git status --short
$status = git status --porcelain
if ($status -ne "")
{
    git commit -m "Deploy/update site"
}
else
{
    Write-Host "No changes, skip commit." -ForegroundColor Yellow
}

# Branch name (HEAD may not exist before first commit)
$prevErr = $ErrorActionPreference
$ErrorActionPreference = "SilentlyContinue"
$branch = git rev-parse --abbrev-ref HEAD 2>$null
$ErrorActionPreference = $prevErr
if (-not $branch -or $branch -ne "main") { git branch -M main }

Write-Host ">>> Push to origin main..." -ForegroundColor Cyan
git push -u origin main

Write-Host ""
Write-Host "Done. Site: https://liouqihuei.github.io/website1/" -ForegroundColor Green
