# Check GitHub Pages Deployment Status
# Usage: .\check-status.ps1
# Before first use: Edit $GITHUB_TOKEN below

$GITHUB_TOKEN = "YOUR_TOKEN_HERE"
$REPO = "170981705-ship-it/personal-dashboard"

$headers = @{
    Authorization = "Bearer $GITHUB_TOKEN"
    Accept = "application/vnd.github+json"
}

$resp = Invoke-RestMethod -Uri "https://api.github.com/repos/${REPO}/pages" `
    -Method GET -Headers $headers

Write-Host "Status:" $resp.status
Write-Host "URL:" $resp.url
if ($resp.custom_404) { Write-Host "Custom 404: Yes" }
