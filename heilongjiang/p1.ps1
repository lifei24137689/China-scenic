$path = "d:\成品英文\heilongjiang\zhalong.html"
$c = [System.IO.File]::ReadAllBytes($path)
$s = [System.Text.Encoding]::UTF8.GetString($c)

# Hero data labels
$s = $s.Replace("平方公里</div>","km</div>")
$s = $s.Replace("景区</div>","Scenic Area</div>")

# Badge
$s = $s.Replace("5A景区</span>","5A Scenic Area</span>")

# Hero main title
$s = $s.Replace("扎龙生态旅游区</h1>","Zhalong Ecotourism Area</h1>")

# Hero description
$old = '<p>扎龙湿地是中国最大的以鹤类等大型水禽为主体的珍稀鸟类和湿地生态类型的自然保护区，被誉为"世界大湿地中国鹤家乡"。</p>'
$new = '<p>Zhalong Wetland is China\'s largest nature reserve centered on rare birds and wetland ecosystems, primarily featuring crane species and other large waterfowl, renowned as the "World\'s Great Wetland  China\'s Crane Homeland."</p>'
$s = $s.Replace($old, $new)

# Tags
$s = $s.Replace("湿地生态</span>","Wetland Ecology</span>")
$s = $s.Replace("丹顶鹤</span>","Red-Crowned Crane</span>")
$s = $s.Replace("自然保护区</span>","Nature Reserve</span>")
$s = $s.Replace("鸟类天堂</span>","Bird Paradise</span>")

# Section 1
$s = $s.Replace('alt="扎龙湿地全景"','alt="Panoramic View of Zhalong Wetland"')
$s = $s.Replace("湿地<span class=""highlight"">奇观</span>","Wetland <span class=""highlight"">Wonder</span>")

$old1 = '<p>扎龙湿地位于松嫩平原西部，总面积2100平方公里，是中国北方保留最完整、最原始的湿地生态系统。这里芦苇荡漾，水草丰茂，是众多珍稀水禽的理想栖息地。</p>'
$new1 = '<p>Located in the western Songnen Plain, Zhalong Wetland covers a total area of 2,100 km, making it the best-preserved and most pristine wetland ecosystem in northern China. Here, reeds sway in the breeze and aquatic plants thrive, providing an ideal habitat for numerous rare waterfowl.</p>'
$s = $s.Replace($old1, $new1)

$old2 = '<p>湿地内河流纵横，湖泊星罗棋布，形成了独特的湿地景观。每年春秋两季，数以万计的候鸟在此停留、繁衍，构成了一幅生机勃勃的自然画卷。</p>'
$new2 = '<p>The wetland is crisscrossed by rivers and dotted with lakes, creating a unique wetland landscape. Every spring and autumn, tens of thousands of migratory birds stop here to rest and breed, painting a vibrant picture of nature.</p>'
$s = $s.Replace($old2, $new2)

$s = $s.Replace("平方公里</div>","km</div>")
$s = $s.Replace("建区年份</div>","Established</div>")

[System.IO.File]::WriteAllBytes($path, [System.Text.Encoding]::UTF8.GetBytes($s))
Write-Host "Phase 1 done"