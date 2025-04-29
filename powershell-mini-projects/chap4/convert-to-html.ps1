$destHtmlFile = "index.html"
If (-Not $(Test-Path -Path $destHtmlFile -PathType Leaf)){
    New-Item -ItemType "File" -Path $destHtmlFile
}
Clear-Content -Path $destHtmlFile
$htmlCode = Get-Service -DisplayName 'Windows Insider Service' | ConvertTo-Html
$htmlCode | Out-File "index.html"
$fullPathToHtml = $(Get-ChildItem -Path $destHtmlFile).FullName
Start-Process -FilePath "C:\Program Files\Google\Chrome\Application\chrome.exe" -ArgumentList $fullPathToHtml