# Family Office Funds Dashboard — Live Demo

This is a **live demo** of the [family-office-funds-dashboard-template](https://github.com/crb-kci/family-office-funds-dashboard-template). It runs the exact same code as the template, but with `DEMO_MODE=true` so it:

- Skips Google OAuth (anyone can view)
- Loads from a local JSON fixture (`demo-data.json`) instead of Google Sheets
- Shows a yellow "Demo data" banner on every page

**Nothing on the live dashboard is real.** Fund names, managers, commitments, NAV, IRR — all fabricated. 46 made-up funds across four strategies (Seed, Early Stage, Multi-Stage, Growth) spanning vintages 2005–2024.

## Live URL

**https://funds-dashboard-demo-946978801446.us-central1.run.app**

Public. No sign-in. Deployed to Google Cloud Run in an isolated GCP project (`funds-dashboard-demo`) — no connection to any real data source.

## Why this exists

The template is a scaffold — to see what the finished product looks like, you'd normally have to clone it, create a GCP project, wire up OAuth, share a sheet with a service account, and deploy. This demo skips all of that so prospective users can just click a link.

## What's different from the template

- `demo-data.json` has 46 funds (template has 5)
- `Dockerfile` sets `ENV DEMO_MODE=true` so Cloud Run starts in demo mode automatically
- That's it. `server.js`, `dashboard.html`, and every other file are identical.

## Using the template for real

Go to [family-office-funds-dashboard-template](https://github.com/crb-kci/family-office-funds-dashboard-template) and follow its `DEPLOY.md`. The template has the full setup guide; this demo repo intentionally does not.
