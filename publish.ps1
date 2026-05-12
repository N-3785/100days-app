param([string]$day, [string]$message)

if (-not $day) {
    Write-Host "Usage: .\publish.ps1 002 appname" -ForegroundColor Yellow
    exit
}

$commitMsg = if ($message) { "Day ${day}: $message" } else { "Day ${day}: update" }

git add "day$day"
git commit -m $commitMsg
git push

Write-Host ""
Write-Host "Done!" -ForegroundColor Green
$url = "https://N-3785.github.io/100days-app/day" + $day + "/"
Write-Host $url -ForegroundColor Cyan