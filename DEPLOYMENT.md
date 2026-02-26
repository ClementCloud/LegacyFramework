# GitHub Pages Deployment Instructions

## Step 1: Create a New GitHub Repository

1. Go to [GitHub](https://github.com)
2. Click the **+** button in the top right → **New repository**
3. Name it: `sunshine-trust-guide` (or any name you prefer)
4. Make it **Private** (recommended for family content)
5. Click **Create repository**

## Step 2: Upload Files

### Option A: Using GitHub Website (Easiest)

1. In your new repository, click **uploading an existing file**
2. Drag and drop these files:
   - `index.html`
   - `README.md`
3. Click **Commit changes**

### Option B: Using Git Command Line

```bash
# Navigate to the downloaded folder
cd sunshine-trust-pages

# Initialize git
git init

# Add files
git add .

# Commit
git commit -m "Initial commit - Sunshine Trust Interactive Guide"

# Add your GitHub repository as remote
git remote add origin https://github.com/YOUR-USERNAME/sunshine-trust-guide.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. In your GitHub repository, go to **Settings**
2. Scroll down to **Pages** (in the left sidebar)
3. Under **Source**, select:
   - Branch: **main**
   - Folder: **/ (root)**
4. Click **Save**

## Step 4: Access Your Site

After a few minutes, your site will be live at:

```
https://YOUR-USERNAME.github.io/sunshine-trust-guide/
```

GitHub will show you the exact URL in the Pages settings.

## 🔒 Privacy Options

### Keep Repository Private (Recommended)

- Repository stays private
- Only you and collaborators can see the code
- The published Pages site is still accessible via the URL
- Share the URL only with family members

### Make Truly Private

If you need the site itself to be private:

1. Keep the repository private
2. Use GitHub Actions with authentication
3. Or host on a different platform with password protection

## ✅ You're Done!

Share the GitHub Pages URL with your family members. They can bookmark it and access the interactive guide anytime!

## 🔄 Making Updates

1. Edit `index.html` locally
2. Upload the new version to GitHub (or use git push)
3. GitHub Pages automatically updates within a few minutes

---

**Questions?** The site works entirely in the browser - no server needed!
