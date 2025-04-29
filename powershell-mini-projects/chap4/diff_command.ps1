$referenceFileName = "reference.xml"
IF (-Not $(Test-Path -Path $referenceFileName -PathType Leaf)){
    New-Item -ItemType "File" -Path $referenceFileName
}

Clear-Content -Path $referenceFileName
Get-Process | Export-Clixml $referenceFileName

# => process only exists in reference.xml. <= process that currently runs on computer but not stored in xml
Compare-Object -ReferenceObject (Import-Clixml $referenceFileName) -DifferenceObject (Get-Process) -Property Name