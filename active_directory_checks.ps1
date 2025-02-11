Test-Path "HKLM:\SYSTEM\CurrentControlSet\Services\NTDS" # checks if machine is a part of domain or not by checking NTDS service

[System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().DomainControllers # list all domain controlllers

Get-WindowsFeature | Where-Object { $_.Name -like "*AD-Domain-Services*" } # checks if AD-Domain-Services is installed or not because normally it is only installed on DC

Get-ADDomain | Select-Object PDCEmulator # check if pdc or not

Get-ComputerInfo
systeminfo
