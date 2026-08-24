# ============================================================
# Emerson De Pasion portfolio — archive legacy site + publish
# Run this from inside: D:\GIT-REPO\emersondepasion.github.io
# ============================================================

# 1. Create the archive folder (old site is SHELVED here, not deleted)
New-Item -ItemType Directory -Path "_archive\projects" -Force | Out-Null

# 2. Move the two old root pages into the archive
Move-Item -Path "index.html"   -Destination "_archive\index.html"   -Force
Move-Item -Path "project.html" -Destination "_archive\project.html" -Force

# 3. Move the 34 legacy (non "-conceptb") project pages into the archive
$legacy = @(
  "asean-energy.html","aston-martin.html","black-panther.html","bmw-4series.html",
  "bmw-byd-showroom.html","bongtees.html","brand-logos.html","breathe.html",
  "camid-seasonal.html","camid-wnl.html","cocacola-ph.html","comfort.html",
  "dragon-land.html","exhibition-stands.html","fine-cigarettes.html","ginsomin.html",
  "gofen.html","grab.html","gshock.html","halls-dentyne.html","hanuman-lite.html",
  "hardrock.html","heineken-silver.html","jti-grandprix.html","kitkat.html",
  "lamborghini-mclaren.html","maggi.html","mclaren-elva.html","nescafe.html",
  "pleng.html","sinn-watches.html","tiger-beer.html","tiger-concert.html","toyota.html"
)
foreach ($f in $legacy) {
  Move-Item -Path "projects\$f" -Destination "_archive\projects\$f" -Force
}

# 4. Promote Concept B to be the live homepage
Move-Item -Path "index-option-b.html" -Destination "index.html" -Force

# 5. Fix every internal link that pointed at "index-option-b.html"
#    so it now points at "index.html" instead
$filesToFix = @("index.html", "about.html") + (Get-ChildItem "projects" -Filter "*-conceptb.html" | ForEach-Object { "projects\$($_.Name)" })
foreach ($f in $filesToFix) {
  (Get-Content $f -Raw) -replace [regex]::Escape("index-option-b.html"), "index.html" | Set-Content $f -NoNewline
}

Write-Host ""
Write-Host "Done. The old site is safely in _archive\ and Concept B is now index.html." -ForegroundColor Green
Write-Host "Next: review the site locally, then run the git commands to publish." -ForegroundColor Green
