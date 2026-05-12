param([string]$day, [string]$message)

if (-not $day) {
    Write-Host "使い方: .\publish.ps1 002 'アプリ名'" -ForegroundColor Yellow
    exit
}

$commitMsg = if ($message) { "Day $day`: $message" } else { "Day $day`: update" }

git add "day$day"
git commit -m $commitMsg
git push

Write-Host ""
Write-Host "公開完了！" -ForegroundColor Green
Write-Host "URL: https://N-3785.github.io/100days-app/day$day/" -ForegroundColor Cyan
