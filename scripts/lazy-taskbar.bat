:: Created by: rm4rts

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V TaskbarGlomLevel /T REG_DWORD /D 2 /F

taskkill /f /im explorer.exe
start explorer.exe

echo Done. Press any key to exit.
pause > nul