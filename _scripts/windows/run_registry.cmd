reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v HideFileExt /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v TaskbarSmallIcons /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v ShowTaskViewButton /d 0 /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v CortanaConsent /d 0 /f 
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v DeviceHistoryEnabled /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v SearchboxTaskbarMode /d 0 /f 