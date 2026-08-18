param([string]$Path, [string]$Old, [string]$New)
$utf8 = New-Object System.Text.UTF8Encoding $false
$bytes = [System.IO.File]::ReadAllBytes($Path)
$text = $utf8.GetString($bytes)
# Find every line that contains $Old (other than the title/H1) to decide whether to bulk-rename
$lines = $text -split "`n"
$relevantLines = @()
for ($i = 0; $i -lt $lines.Count; $i++) {
    $clean = $lines[$i].TrimEnd("`r")
    if ($clean -match [regex]::Escape($Old)) {
        $relevantLines += [pscustomobject]@{ Line = ($i + 1); Text = $clean }
    }
}
Write-Output ('Path: ' + $Path)
Write-Output ('Occurrences of "' + $Old + '": ' + $relevantLines.Count)
foreach ($rl in $relevantLines | Select-Object -First 6) {
    Write-Output ('   L' + $rl.Line + ': ' + $rl.Text.Substring(0, [Math]::Min(140, $rl.Text.Length)))
}
