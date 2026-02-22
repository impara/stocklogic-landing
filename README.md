# StockLogic Landing Page

Standalone static site for the StockLogic marketing landing. Deploy this repo alone (e.g. Coolify); not part of the main Shopify app repo.

## Deploy as its own repo

1. Copy this folder somewhere outside the stockLogic app:
   ```bash
   cp -r stocklogic-landing-page /path/to/stocklogic-landing
   cd /path/to/stocklogic-landing
   ```
2. Create a new repo on GitHub/GitLab and init here:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: StockLogic landing page"
   git remote add origin https://github.com/YOUR_USER/stocklogic-landing.git
   git branch -M main
   git push -u origin main
   ```
3. In Coolify, add an application with **Source = Git**, this repo, and build path `.` (root). No need to deploy the whole Shopify app.

## Run locally

```bash
docker compose up -d
# http://localhost:8080
```
