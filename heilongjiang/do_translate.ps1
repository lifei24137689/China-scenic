$path = "d:\成品英文\heilongjiang\zhalong.html"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

Write-Host "Original size: $($content.Length)"

# lang
$content = $content -replace '<html lang="zh-CN">', '<html lang="en">'
# title
$content = $content -replace '<title>扎龙生态旅游区  丹顶鹤的故乡 | 5A景区沉浸式探索</title>', '<title>Zhalong Ecotourism Area  Homeland of Red-Crowned Cranes | 5A Scenic Area Immersive Exploration</title>'
# scroll-hud
$content = $content -replace '<strong>扎龙生态旅游区</strong>  黑龙江', '<strong>Zhalong Ecotourism Area</strong>  Heilongjiang'
# chapter-nav
$content = $content -replace '<span class="chapter-label">湿地</span>', '<span class="chapter-label">Wetlands</span>'
$content = $content -replace '<span class="chapter-label">丹顶鹤</span>', '<span class="chapter-label">Cranes</span>'
$content = $content -replace '<span class="chapter-label">生态</span>', '<span class="chapter-label">Ecology</span>'
$content = $content -replace '<span class="chapter-label">画廊</span>', '<span class="chapter-label">Gallery</span>'
$content = $content -replace '<span class="chapter-label">数据</span>', '<span class="chapter-label">Data</span>'
# hero data labels
$content = $content -replace '<div class="label">平方公里</div>', '<div class="label">km2</div>'
$content = $content -replace '<div class="label">丹顶鹤</div>', '<div class="label">Red-Crowned Cranes</div>'
$content = $content -replace '<div class="label">景区</div>', '<div class="label">Scenic Area</div>'
# badge
$content = $content -replace '<span class="badge">5A景区</span>', '<span class="badge">5A Scenic Area</span>'
# heading title (only standalone one)
$idx = $content.IndexOf('<h1>')
$endIdx = $content.IndexOf('</h1>', $idx)
$h1Block = $content.Substring($idx, $endIdx - $idx + 5)
$newH1 = $h1Block -replace '扎龙生态旅游区', 'Zhalong Ecotourism Area'
$content = $content.Replace($h1Block, $newH1)
# subtitle
$content = $content -replace '<div class="subtitle">丹顶鹤的故乡  世界大湿地</div>', '<div class="subtitle">Homeland of Red-Crowned Cranes  World Great Wetland</div>'

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
Write-Host "Batch 1 done. Size: $($content.Length)"