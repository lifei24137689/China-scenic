$path = "d:\成品英文\guizhou\longgong.html"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

$dot = [char]0x00B7

# Title
$search1 = "<title>龙宫 " + $dot + " 中国第一水溶洞 | 5A景区沉浸式探索</title>"
$replace1 = "<title>Dragon Palace " + $dot + " China's #1 Water Karst Cave | 5A Scenic Immersive Exploration</title>"
$content = $content.Replace($search1, $replace1)

# Hero sub
$search2 = '<p class="hero-sub">中国第一水溶洞 ' + $dot + ' 地下暗河五千米</p>'
$replace2 = "<p class=`"hero-sub`">China's #1 Water Karst Cave " + $dot + " 5,000m Underground River</p>"
$content = $content.Replace($search2, $replace2)

# Content 1 heading
$search3 = '<h2>龙宫溶洞 ' + $dot + ' 地下秘境</h2>'
$replace3 = '<h2>Dragon Palace Cave ' + $dot + ' Underground Realm</h2>'
$content = $content.Replace($search3, $replace3)

# Content 2 heading
$search4 = '<h2>龙门飞瀑 ' + $dot + ' 洞内巨瀑</h2>'
$replace4 = '<h2>Dragon Gate Waterfall ' + $dot + ' Cave Giant</h2>'
$content = $content.Replace($search4, $replace4)

# Content 3 heading
$search5 = '<h2>天池 ' + $dot + ' 观音洞</h2>'
$replace5 = '<h2>Heavenly Lake ' + $dot + ' Guanyin Cave</h2>'
$content = $content.Replace($search5, $replace5)

# Gallery heading
$search6 = '<h2>龙宫 ' + $dot + ' 光影集</h2>'
$replace6 = '<h2>Dragon Palace ' + $dot + ' Gallery</h2>'
$content = $content.Replace($search6, $replace6)

# Dashboard heading
$search7 = '<h2>龙宫 ' + $dot + ' 数据面板</h2>'
$replace7 = '<h2>Dragon Palace ' + $dot + ' Data</h2>'
$content = $content.Replace($search7, $replace7)

# CTA title
$search8 = '探秘地下龙宫 ' + $dot + ' 邂逅亿年奇观'
$replace8 = "Explore the Dragon Palace " + $dot + " Witness a Billion-Year Wonder"
$content = $content.Replace($search8, $replace8)

# Footer
$search9 = '<p>龙宫 ' + $dot + ' 国家5A级旅游景区 ' + $dot + ' 贵州省安顺市</p>'
$replace9 = '<p>Dragon Palace ' + $dot + ' National 5A Scenic Area ' + $dot + ' Anshun, Guizhou</p>'
$content = $content.Replace($search9, $replace9)

# Dash value
$content = $content.Replace('<div class="dash-value">全年</div>', '<div class="dash-value">Year-Round</div>')

# HTML comments
$content = $content.Replace('<!-- Content 1: 龙宫溶洞 -->', '<!-- Content 1: Dragon Palace Cave -->')
$content = $content.Replace('<!-- Content 2: 龙门飞瀑 (reverse) -->', '<!-- Content 2: Dragon Gate Waterfall (reverse) -->')
$content = $content.Replace('<!-- Content 3: 天池 -->', '<!-- Content 3: Heavenly Lake -->')

# Fix "人工" in Guanyin Cave paragraph
$content = $content.Replace('人工', 'man-made')

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)

# Count remaining
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
$count = 0
for ($i = 0; $i -lt $content.Length; $i++) {
    $c = [int]$content[$i]
    if ($c -ge 0x4E00 -and $c -le 0x9FFF) { $count++ }
}
Write-Host "Remaining Chinese: $count"