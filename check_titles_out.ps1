[string[]]$Paths = $args
$utf8 = New-Object System.Text.UTF8Encoding $false

foreach ($p in $Paths) {
    $bytes = [System.IO.File]::ReadAllBytes($p)
    $text = $utf8.GetString($bytes)
    $title = $null
    $h1 = $null
    foreach ($ln in ($text -split "`n")) {
        $clean = $ln.TrimEnd("`r")
        if (-not $title -and $clean -match '^title:\s*(.+?)\s*$') { $title = $matches[1] }
        if (-not $h1 -and $clean -match '^#\s+(.+?)\s*$') { $h1 = $matches[1] }
        if ($title -and $h1) { break }
    }
    Write-Output ('PATH: ' + $p)
    Write-Output ('   title: ' + $title + ' (len=' + $title.Length + ')')
    Write-Output ('   h1:    ' + $h1 + ' (len=' + $h1.Length + ')')
}
