Param(
    [string]
    $inputFileName,

    [string]
    $contentToFile
)

$destFile = $inputFileName + '.txt'
If ($inputFileName -eq '' -or $inputFileName -eq $null){
    $destFile = 'dummy-file.txt'
}

Try{
    # use -errorAction Stop so that if exception occurs on line 13, line 14 won't be executed and instead exception will be caught
    $fileContent = Get-Content $destFile -ErrorAction Stop
    Write-Host "file content is $fileContent"
    If (-Not ($contentToFile -eq $null -or $contentToFile -eq '')){
        Write-Host "Writing $contentToFile to file $destFile"
        $contentToFile | Out-File -FilePath $destFile -Encoding UTF8
    }
}
Catch {
    Write-Error "Error happened : $($_.exception.message)"
}