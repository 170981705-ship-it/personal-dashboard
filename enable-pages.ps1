# Enable GitHub Pages Script
# Usage: .\enable-pages.ps1
# Before first use: Edit $GITHUB_TOKEN below

$GITHUB_TOKEN = "YOUR_TOKEN_HERE"
$REPO = "170981705-ship-it/personal-dashboard"

$headers = @{
    Authorization = "Bearer $GITHUB_TOKEN"
    Accept = "application/vnd.github+json"
}

$body = @{
    build_type = "legacy"
    source = @{
        branch = "main"
        path = "/"
    }
} | ConvertTo-Json

Invoke-RestMethod -Uri "https://api.github.com/repos/${REPO}/pages" `
    -Method POST -Headers $headers -Body $body `
    -ContentType "application/json"
