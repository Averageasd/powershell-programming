
Get-Process | Sort-Object -Property VM | Select-Object Name, VM | Out-File "vm-consumption.csv"