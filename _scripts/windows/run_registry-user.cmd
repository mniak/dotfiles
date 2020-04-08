reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v HideFileExt /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v TaskbarSmallIcons /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v ShowTaskViewButton /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer /t REG_DWORD /v AllowedEnumeration /d 1 /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v CortanaConsent /d 0 /f 
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v DeviceHistoryEnabled /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v SearchboxTaskbarMode /d 0 /f 

REM Disable Fun Facts from lock screen
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager /t REG_DWORD /v RotatingLockScreenOverlayEnabled /d 0 /f 
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager /t REG_DWORD /v SubscribedContent-338387Enabled /d 0 /f 
