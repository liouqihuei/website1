# Start Jekyll preview only (Ruby must be installed)
# Usage: .\run-preview.ps1

$ProjectRoot = $PSScriptRoot
Set-Location $ProjectRoot

$rubyPath = Get-Command ruby -ErrorAction SilentlyContinue
if (-not $rubyPath) {
    $commonPaths = @("C:\Ruby32-x64\bin", "C:\Ruby326-x64\bin", "C:\Ruby33-x64\bin")
    foreach ($p in $commonPaths) {
        if (Test-Path "$p\ruby.exe") {
            $env:Path = $p + ";" + $env:Path
            break
        }
    }
    $rubyPath = Get-Command ruby -ErrorAction SilentlyContinue
}
if (-not $rubyPath) {
    Write-Host "Ruby not found. Run .\setup-jekyll-preview.ps1 first, or restart the terminal after installing Ruby." -ForegroundColor Red
    exit 1
}

if (-not (Test-Path "vendor/bundle")) {
    Write-Host "首次运行，正在安装依赖..." -ForegroundColor Yellow
    bundle config set --local path 'vendor/bundle'
    bundle install
}

Write-Host "在浏览器中打开: http://localhost:4000" -ForegroundColor Green
Write-Host "按 Ctrl+C 停止预览" -ForegroundColor Gray
Write-Host ""
bundle exec jekyll serve
