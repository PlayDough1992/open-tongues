# Open Tongues

Single-file language learning suite for free public access.

## Deploy on GitHub Pages

This repository is already configured with a GitHub Actions workflow at [.github/workflows/pages.yml](.github/workflows/pages.yml).

### 1. Create a GitHub repository

Create a new empty repository on GitHub:
- open-tongues

### 2. Push this project to GitHub

Run these commands from this folder:

git init

git add .

git commit -m "Initial Open Tongues site"

git branch -M main

git remote add origin https://github.com/PlayDough1992/open-tongues.git

git push -u origin main

### 3. Enable GitHub Pages from Actions

In your GitHub repository:
- Go to Settings -> Pages
- Under Build and deployment, set Source to GitHub Actions

### 4. Trigger deployment

Push any change to main, or run the workflow manually from the Actions tab.

Your site URL will be:
- https://playdough1992.github.io/open-tongues/

## Notes

- The site is static and does not require a backend.
- All course logic and content are in [index.html](index.html).
- Local study progress is stored in browser localStorage.
