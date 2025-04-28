Param(
    [string]$param,
    [string]$param2,
    [string]$filename,
    [Parameter(Mandatory)]
    [string]
    $requiredString
)


Write-Host "User passed in `$param: $param"
Write-Host "User passed in `$param2: $param2"
Write-Host "User wanted to create new file: $filename"
Write-Host "User passed in `$requiredString: $requiredString"

If (Test-Path -Path $filename -PathType Leaf){
    Write-Host "File $filename already exists"
}
Else{
    If (-Not $Path -eq ''){
        New-Item $filename
    }
    Else {
        Write-Host "`$filename cannot be null or empty"
    } 
}

