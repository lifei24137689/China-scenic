$path = "d:\成品英文\heilongjiang\zhalong.html"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

Write-Host "Original size: $($content.Length)"

# === lang ===
$content = $content -replace '<html lang="zh-CN">', '<html lang="en">'

# === title ===
$content = $content -replace '<title>扎龙生态旅游区 · 丹顶鹤的故乡 \| 5A景区沉浸式探索</title>', '<title>Zhalong Ecotourism Area · Homeland of Red-Crowned Cranes | 5A Scenic Area Immersive Exploration</title>'

# === scroll-hud ===
$content = $content -replace '<strong>扎龙生态旅游区</strong> · 黑龙江', '<strong>Zhalong Ecotourism Area</strong> · Heilongjiang'

# === chapter-nav labels ===
$content = $content -replace '<span class="chapter-label">湿地</span>', '<span class="chapter-label">Wetlands</span>'
$content = $content -replace '<span class="chapter-label">丹顶鹤</span>', '<span class="chapter-label">Cranes</span>'
$content = $content -replace '<span class="chapter-label">生态</span>', '<span class="chapter-label">Ecology</span>'
$content = $content -replace '<span class="chapter-label">画廊</span>', '<span class="chapter-label">Gallery</span>'
$content = $content -replace '<span class="chapter-label">数据</span>', '<span class="chapter-label">Data</span>'

# === Hero data labels ===
$content = $content -replace '<div class="label">平方公里</div>', '<div class="label">km²</div>'
$content = $content -replace '<div class="label">丹顶鹤</div>', '<div class="label">Red-Crowned Cranes</div>'
$content = $content -replace '<div class="label">景区</div>', '<div class="label">Scenic Area</div>'

# === Hero title group (only standalone, not in image paths) ===
$content = $content -replace '<span class="badge">5A景区</span>', '<span class="badge">5A Scenic Area</span>'
$content = $content -replace '(<h1>\s*<span class="badge">5A Scenic Area</span>\s*)扎龙生态旅游区', '$1Zhalong Ecotourism Area'
$content = $content -replace '<div class="subtitle">丹顶鹤的故乡 · 世界大湿地</div>', '<div class="subtitle">Homeland of Red-Crowned Cranes · World\'s Great Wetland</div>'

# === Hero info card ===
$content = $content -replace '扎龙湿地是中国最大的以鹤类等大型水禽为主体的珍稀鸟类和湿地生态类型的自然保护区，被誉为"世界大湿地·中国鹤家乡"。', 'Zhalong Wetland is China\'s largest nature reserve centered on rare birds and wetland ecosystems, primarily featuring crane species and other large waterfowl, renowned as the "World\'s Great Wetland · China\'s Crane Homeland."'

$content = $content -replace '<span class="tag-wetland">湿地生态</span>', '<span class="tag-wetland">Wetland Ecology</span>'
$content = $content -replace '<span class="tag-crane">丹顶鹤</span>', '<span class="tag-crane">Red-Crowned Crane</span>'
$content = $content -replace '<span class="tag-eco">自然保护区</span>', '<span class="tag-eco">Nature Reserve</span>'
$content = $content -replace '<span class="tag-nature">鸟类天堂</span>', '<span class="tag-nature">Bird Paradise</span>'

# === Section 1 - Wetland Wonder ===
$content = $content -replace 'alt="扎龙湿地全景"', 'alt="Panoramic View of Zhalong Wetland"'
$content = $content -replace '<h2>湿地<span class="highlight">奇观</span></h2>', '<h2>Wetland <span class="highlight">Wonder</span></h2>'
$content = $content -replace '扎龙湿地位于松嫩平原西部，总面积2100平方公里，是中国北方保留最完整、最原始的湿地生态系统。这里芦苇荡漾，水草丰茂，是众多珍稀水禽的理想栖息地。', 'Located in the western Songnen Plain, Zhalong Wetland covers a total area of 2,100 km², making it the best-preserved and most pristine wetland ecosystem in northern China. Here, reeds sway in the breeze and aquatic plants thrive, providing an ideal habitat for numerous rare waterfowl.'
$content = $content -replace '湿地内河流纵横，湖泊星罗棋布，形成了独特的湿地景观。每年春秋两季，数以万计的候鸟在此停留、繁衍，构成了一幅生机勃勃的自然画卷。', 'The wetland is crisscrossed by rivers and dotted with lakes, creating a unique wetland landscape. Every spring and autumn, tens of thousands of migratory birds stop here to rest and breed, painting a vibrant picture of nature.'
$content = $content -replace '<div class="lbl">平方公里</div>', '<div class="lbl">km²</div>'
$content = $content -replace '<div class="lbl">建区年份</div>', '<div class="lbl">Established</div>'

# === Image break ===
$content = $content -replace '<p>鹤鸣九皋，声闻于天</p>', '<p>Cranes cry out in the deep marsh, their calls heard across the heavens</p>'
$content = $content -replace '<div class="author">—— 《诗经》</div>', '<div class="author">— The Book of Songs</div>'

# === Section 2 - Red-Crowned Crane Homeland ===
$content = $content -replace 'alt="观鹤台"', 'alt="Crane Observation Deck"'
$content = $content -replace '<h2>丹顶鹤<span class="highlight">家园</span></h2>', '<h2>Red-Crowned Crane <span class="highlight">Homeland</span></h2>'
$content = $content -replace '扎龙湿地是世界著名的丹顶鹤繁殖地和迁徙停歇地，每年有300多只野生丹顶鹤在此繁衍生息。丹顶鹤体态优雅，鸣声清越，被誉为"仙鹤"，是吉祥长寿的象征。', 'Zhalong Wetland is a world-renowned breeding and migration stopover site for red-crowned cranes, with over 300 wild individuals thriving here each year. Elegant in posture and clear in voice, the red-crowned crane is honored as the "immortal crane," symbolizing good fortune and longevity.'
$content = $content -replace '景区设有观鹤台、丹顶鹤野化训飞区等设施，游客可以近距离观赏丹顶鹤的优美身姿和飞翔姿态。每天定时举行的丹顶鹤放飞表演，更是景区的一大亮点。', 'The scenic area features facilities such as a crane observation deck and a red-crowned crane training flight zone, allowing visitors to observe their graceful postures and flying forms up close. The scheduled daily crane release performance is a major highlight of the area.'
$content = $content -replace '<div class="lbl">野生丹顶鹤</div>', '<div class="lbl">Wild Red-Crowned Cranes</div>'
$content = $content -replace '<div class="lbl">每日放飞</div>', '<div class="lbl">Daily Releases</div>'

# === Section 3 - Ecological Treasure Trove ===
$content = $content -replace 'alt="丹顶鹤特写"', 'alt="Red-Crowned Crane Close-up"'
$content = $content -replace '<h2>生态<span class="highlight">宝库</span></h2>', '<h2>Ecological <span class="highlight">Treasure Trove</span></h2>'
$content = $content -replace '扎龙湿地不仅是丹顶鹤的家园，更是众多珍稀鸟类的栖息地。这里记录有鸟类260多种，其中国家一级保护鸟类8种，二级保护鸟类40多种，是名副其实的鸟类天堂。', 'Zhalong Wetland is not only a home for red-crowned cranes but also a habitat for numerous rare bird species. Over 260 bird species have been recorded here, including 8 species under national first-class protection and over 40 under second-class protection, making it a true bird paradise.'
$content = $content -replace '湿地生态系统完整，生物多样性丰富。除了鸟类，还有鱼类、两栖类、爬行类、哺乳类等多种动物，以及丰富的水生植物和湿地植被，构成了完整的生态链。', 'The wetland ecosystem is intact and rich in biodiversity. In addition to birds, it hosts fish, amphibians, reptiles, mammals, and a wealth of aquatic plants and wetland vegetation, forming a complete ecological chain.'
$content = $content -replace '<div class="lbl">鸟类种类</div>', '<div class="lbl">Bird Species</div>'
$content = $content -replace '<div class="lbl">保护鸟类</div>', '<div class="lbl">Protected Birds</div>'

# === Gallery ===
$content = $content -replace '<h2>湿地<span class="highlight">画廊</span></h2>', '<h2>Wetland <span class="highlight">Gallery</span></h2>'
$content = $content -replace 'alt="丹顶鹤群"', 'alt="Flock of Red-Crowned Cranes"'
$content = $content -replace 'alt="丹顶鹤"', 'alt="Red-Crowned Crane"'

# === Dashboard ===
$content = $content -replace '<h2>景区<span class="highlight">数据</span></h2>', '<h2>Scenic Area <span class="highlight">Data</span></h2>'
$content = $content -replace '<div class="d-label">总面积(平方公里)</div>', '<div class="d-label">Total Area (km²)</div>'
$content = $content -replace '<div class="d-label">丹顶鹤数量</div>', '<div class="d-label">Red-Crowned Crane Count</div>'
$content = $content -replace '<div class="d-label">鸟类种类</div>', '<div class="d-label">Bird Species</div>'
$content = $content -replace '<div class="d-label">景区等级</div>', '<div class="d-label">Scenic Area Rating</div>'

# === CTA ===
$content = $content -replace '<h2>探索扎龙湿地</h2>', '<h2>Explore Zhalong Wetland</h2>'
$content = $content -replace '走进这片神奇的湿地，感受大自然的壮美与生命的奇迹。在这里，你可以近距离观赏丹顶鹤的优雅身姿，聆听鹤鸣九皋的天籁之音。', 'Step into this magical wetland and experience the majesty of nature and the wonder of life. Here, you can observe the elegant grace of red-crowned cranes up close and listen to their heavenly calls echoing across the marsh.'
$content = $content -replace '<span>返回地图</span>', '<span>Back to Map</span>'

# === Footer ===
$content = $content -replace '<p>扎龙生态旅游区 · 黑龙江省齐齐哈尔市 · 5A景区</p>', '<p>Zhalong Ecotourism Area · Qiqihar, Heilongjiang · 5A Scenic Area</p>'

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
Write-Host "Done! Final size: $($content.Length)"