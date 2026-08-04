# GitHub Pages Deploy Script
# Usage: .\deploy.ps1
# Before first use: Edit $GITHUB_TOKEN below

$GITHUB_TOKEN = "YOUR_TOKEN_HERE"
$REPO = "170981705-ship-it/personal-dashboard"
$BRANCH = "main"

Set-Location $PSScriptRoot
git add .
git commit -m "Update dashboard"
git push https://${GITHUB_TOKEN}@github.com/${REPO}.git $BRANCH
