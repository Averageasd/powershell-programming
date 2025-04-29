Clear-Content -Path ".\procs.csv"
Get-Process | Export-Csv procs.csv
Notepad procs.csv
Import-CSV procs.csv