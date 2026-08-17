# EDP Creative Portfolio
## emersondepasion.github.io

---

## HOW TO GET THIS LIVE ON GITHUB PAGES

### Step 1 — Create your repository
1. Go to github.com and log in
2. Click the **+** icon top right → **New repository**
3. Name it exactly: `emersondepasion.github.io`
   (must match your username exactly)
4. Set to **Public**
5. Click **Create repository**

### Step 2 — Upload your files
1. In the new empty repository, click **uploading an existing file**
2. Drag and drop ALL files from this folder:
   - `index.html`
   - `about.html`
   - `project.html`
   - `style.css`
   - `assets/` folder (with your images inside)
3. Click **Commit changes**

### Step 3 — Enable GitHub Pages
1. Go to repository **Settings**
2. Click **Pages** in the left sidebar
3. Under Source, select **Deploy from a branch**
4. Select branch: **main** / folder: **/ (root)**
5. Click **Save**

### Step 4 — Your site is live
Wait 2–3 minutes, then visit:
`https://emersondepasion.github.io`

---

## HOW TO ADD YOUR LOGO

1. Save your logo as `edp-logo.png` (use the white version on transparent background)
2. Place it in `assets/images/`
3. It will appear in the navigation automatically

---

## HOW TO ADD PROJECT IMAGES

1. Export your images at **1920px wide**, save as `.jpg` at 80% quality
2. Name them clearly: `mclaren-elva-hero.jpg`, `mclaren-elva-01.jpg`, etc.
3. Place them in `assets/images/`
4. In `index.html`, find the card for that project and replace:
   ```html
   <div class="work-card-placeholder">McLaren Elva</div>
   ```
   with:
   ```html
   <img src="assets/images/mclaren-elva-hero.jpg" alt="McLaren Elva campaign">
   ```

---

## HOW TO ADD A NEW PROJECT

1. Duplicate `project.html` and rename it, e.g. `project-mclaren-elva.html`
2. Update the title, metadata, description, and image sources
3. In `index.html`, find the card and update the `onclick` link:
   ```html
   onclick="window.location='project-mclaren-elva.html'"
   ```

---

## HOW TO ADD A NEW CARD TO THE WORK GRID

Copy this block into `index.html` inside the `work-grid` div:

```html
<article class="work-card" data-category="luxury" onclick="window.location='project-yourproject.html'">
  <div class="work-card-img">
    <img src="assets/images/yourproject-thumb.jpg" alt="Project name">
  </div>
  <div class="work-card-body">
    <p class="work-card-cat">Luxury &amp; Automotive</p>
    <h3 class="work-card-title">Project Title</h3>
    <p class="work-card-client">Client Name — Year</p>
  </div>
</article>
```

**Category options** (must match exactly for filter to work):
- `luxury` — Luxury & Automotive
- `campaign` — Campaign & Advertising  
- `identity` — Brand Identity
- `experiential` — Event & Experiential

---

## HOW TO CONNECT edpcreative.com LATER

1. Register `edpcreative.com` at Porkbun or Namecheap
2. In your domain registrar DNS settings, add:
   - Type: `A` — Value: `185.199.108.153`
   - Type: `A` — Value: `185.199.109.153`
   - Type: `A` — Value: `185.199.110.153`
   - Type: `A` — Value: `185.199.111.153`
   - Type: `CNAME` — Name: `www` — Value: `emersondepasion.github.io`
3. In GitHub repository Settings → Pages → Custom domain
4. Enter: `edpcreative.com`
5. Check **Enforce HTTPS**
6. Wait 24–48 hours for DNS to propagate

No rebuild required. Everything stays the same.

---

## FILE STRUCTURE

```
emersondepasion.github.io/
├── index.html          ← Homepage
├── about.html          ← About page  
├── project.html        ← Case study template
├── style.css           ← All styles
├── README.md           ← This file
└── assets/
    └── images/
        ├── edp-logo.png
        ├── mclaren-elva-hero.jpg
        └── [all project images]
```
