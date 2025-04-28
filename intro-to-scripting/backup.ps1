Param(
    [string]
    $destNameInput
)
$date = Get-Date -Format "yyyy-MM-dd"

$destFileName = $destNameInput + "-"
If ($destNameInput -eq '' -or $destNameInput -eq $null){
    $destFileName = "backup-"
}

$destPath = $destFileName + $date + '.zip'

If (Test-Path -Path $destPath -PathType Leaf){
    Write-Host "File $destPath already exists. Removing it..."
    Remove-Item -Path $destPath
    Write-Host "Removed"
}

# -Path: the directory of file you want to compress into a zip
# CompressionLevel: how much you want to compress
# DestinationPath: resulting path of compressed .zip folder
Compress-Archive -Path './app' -CompressionLevel 'Fastest' -DestinationPath $destPath
Write-Host "Created backup at $destPath"