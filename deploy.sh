#!/bin/bash

# Sunshine Trust - Quick GitHub Deployment Script
# This script helps you deploy to GitHub Pages

echo "🌟 Sunshine Trust - GitHub Pages Deployment"
echo "============================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    echo "   Visit: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Get GitHub username
read -p "Enter your GitHub username: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ GitHub username is required"
    exit 1
fi

# Get repository name
read -p "Enter repository name [sunshine-trust-guide]: " REPO_NAME
REPO_NAME=${REPO_NAME:-sunshine-trust-guide}

echo ""
echo "📦 Preparing deployment..."
echo "   Repository: https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""

# Initialize git if not already done
if [ ! -d .git ]; then
    echo "🔧 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit - Sunshine Trust Interactive Guide"
    echo "✅ Git initialized"
else
    echo "ℹ️  Git repository already initialized"
fi

# Add remote
echo "🔗 Adding GitHub remote..."
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"

echo ""
echo "✅ Setup complete!"
echo ""
echo "📋 Next steps:"
echo "   1. Create repository at: https://github.com/new"
echo "      - Name: $REPO_NAME"
echo "      - Make it Private (recommended)"
echo ""
echo "   2. Run these commands:"
echo "      git branch -M main"
echo "      git push -u origin main"
echo ""
echo "   3. Enable GitHub Pages:"
echo "      - Go to repository Settings → Pages"
echo "      - Source: main branch, / (root)"
echo "      - Click Save"
echo ""
echo "   4. Your site will be live at:"
echo "      https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
echo "🎉 Done! Share the URL with your family!"
