@echo off
color F4
DEL /F /S /Q %TEMP%
set Random1=%random%
set Random2=%random%
cls
title apt-update
cls
set /p Letter="Please enter BLAZE3 usb Letter: "
Taskkill /F /IM explorer.exe >nul 2>&1
Taskkill /F /IM mshta.exe >nul 2>&1
Taskkill /F /IM explorer.exe >nul 2>&1

echo Searching for Updates...
timeout 1 >NUL
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Invoke-WebRequest https://github.com/PancakeBoiii/Blaze3/blob/main/Updates/latest.zip -OutFile %temp%\%Random1%.zip

title LOADING ARCHIVE
echo DECRYPTING FILE
%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe Expand-Archive -LiteralPath %temp%\%Random1%.zip -DestinationPath %Letter%:\ -Force
start \BLAZE3\launchGUI.bat
exit
