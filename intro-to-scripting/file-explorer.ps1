Try {

    # get all file names in directory ./app recursively, sort them in asc order and apply regex to make sure
    # we only get files that end with js, html or css
    $allFiles = $(Get-ChildItem -Path "./app" -Name -Recurse | Sort-Object -Unique) -match  '\.js|\.html|\.css'
    Write-Host $allFiles
}

Catch {
    Write-Error "Error happend: $($_.Exception.Message)"
}