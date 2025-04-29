Remove-Item .\final\* -Recurse
Copy-Item -Path .\initial\*  -Destination .\final -Recurse
Get-ChildItem -Path "C:\Windows" | Add-Content -Path "final/MyDir.txt"
Get-Content -Path "final/MyDir.txt"
Rename-Item -Path "final/MyDir.txt" "WindowsDir.txt"
New-Item -ItemType "Directory" -Path "final/LabOutput"
Copy-Item -Path "final/WindowsDir.txt" -Destination "final/LabOutput"
Remove-Item -Path "final/WindowsDir.txt"
Get-Process | Add-Content -Path "final/Procs.txt"
Move-Item -Path "final/Procs.txt" -Destination "final/LabOutput"
Get-Content "final/LabOutput/Procs.txt" | More 