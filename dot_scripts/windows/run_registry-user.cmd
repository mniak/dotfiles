reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer"          /t REG_DWORD /v AllowedEnumeration /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v HideFileExt        /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v TaskbarSmallIcons  /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v ShowTaskViewButton /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v Hidden             /d 1 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /t REG_DWORD /v CortanaConsent       /d 0 /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /t REG_DWORD /v DeviceHistoryEnabled /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /t REG_DWORD /v SearchboxTaskbarMode /d 0 /f 

REM Disable Fun Facts from lock screen
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /t REG_DWORD /v RotatingLockScreenOverlayEnabled /d 0 /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /t REG_DWORD /v SubscribedContent-338387Enabled  /d 0 /f 

REM Keyboard accessibility settings
reg add "HKCU\Control Panel\Keyboard"                        /t REG_SZ    /v KeyboardDelay /d 0  /f 
reg add "HKCU\Control Panel\Keyboard"                        /t REG_SZ    /v KeyboardSpeed /d 31 /f 
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /t REG_DWORD /v Flags         /d 2  /f 
reg add "HKCU\Control Panel\Accessibility\StickyKeys"        /t REG_SZ    /v Flags         /d 26 /f 
reg add "HKCU\Control Panel\Accessibility\ToggleKeys"        /t REG_SZ    /v Flags         /d 58 /f 

reg add "HKCU\SOFTWARE\Classes\Directory\Background\shell\Open WT Powershell here\command" /t REG_EXPAND_SZ /ve /d "\"%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe\" new-tab -p \"{574e775e-4f2a-5b96-ac1e-a2962a402336}\" -d \"%%V\"" /f 

reg add "HKCU\SOFTWARE\Classes\Directory\Background\shell\Open WT WSL here\command" /t REG_EXPAND_SZ /ve /d "\"%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe\" new-tab -p \"{a5a97cb8-8961-5535-816d-772efe0c6a3f}\" -d \"%%V\"" /f 

reg add "HKCU\SOFTWARE\Classes\Directory\Background\shell\Open VS Code Here\command" /t REG_EXPAND_SZ /ve /d "\"%LOCALAPPDATA%\Programs\Microsoft VS Code\bin\code\" \"%%V\"" /f 