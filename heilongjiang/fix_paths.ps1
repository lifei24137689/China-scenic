$bytes = [System.IO.File]::ReadAllBytes([System.IO.Path]::Combine("d:", "成品英文", "heilongjiang", "wudalianchi.html"))
$content = [System.Text.Encoding]::UTF8.GetString($bytes)
$lines = $content -split "`n"
Write-Host "Total lines: " $lines.Length
for ($i = 0; $i -lt $lines.Length; $i++) {
    $line = $lines[$i]
    if ($line.Contains("url(") -or ($line.Contains("src=") -and ($line.Contains(".jpg") -or $line.Contains(".png")))) {
        $trimmed = $line.Trim()
        Write-Host ("Line " + ($i+1) + ": " + $trimmed)
    }
}