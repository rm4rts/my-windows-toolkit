@echo off
:: Temp File Cleaner by rm4rts. Must be run as Administrator.

echo Cleaning temp files...

:: Windows temp
del /f /s /q "%SystemRoot%\Temp\*.*" > nul 2>&1
for /d %%D in ("%SystemRoot%\Temp\*") do rd /s /q "%%D" > nul 2>&1

:: User temp
del /f /s /q "%TEMP%\*.*" > nul 2>&1
for /d %%D in ("%TEMP%\*") do rd /s /q "%%D" > nul 2>&1

:: Prefetch
del /f /s /q "C:\Windows\Prefetch\*.*" > nul 2>&1

:: Spool
net stop spooler > nul 2>&1
del /q /f "%SystemRoot%\System32\spool\PRINTERS\*.*" > nul 2>&1
net start spooler > nul 2>&1

echo Completed. Press any key to exit.
pause
exit /b


