$xmlFileName = "procs.xml"
IF (-Not $(Test-Path -Path $xmlFileName -PathType Leaf)){
    New-Item -ItemType "File" -Path $xmlFileName
}

# clear file content
Clear-Content -Path $xmlFileName

# pipe this to export function which puts all processes into xml file
Get-Process | Export-Clixml $xmlFileName

# get path without @{}
$fullPathToXml = (Get-ChildItem -Path $xmlFileName).FullName
Start-Process -FilePath "C:\Program Files\Google\Chrome\Application\chrome.exe" -ArgumentList $fullPathToXml