#Check if is admin
net session >nul 2>&1
if %errorLevel% == 0 (
	goto :ADMIN	
) else (
	goto :ELEVATE
)


:ELEVATE
REM Recurse as admin
PowerShell start -verb runas -wait %~0
GOTO :END

:ADMIN
for /F "tokens=2" %%i in ('whoami /user /fo table /nh') do set SID=%%i
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\UserARSO\%SID%" /t REG_DWORD /v OptOut /d 1 /f

:END
