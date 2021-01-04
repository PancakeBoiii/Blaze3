@echo off
color F4
cls
set package=%1
title sv-get %package%
cls
set /p server=ENTER PACKAGE SERVER (DONT END URL WITH /): 
set /p dir="Please enter Output directory : "
echo Searching for %package% at %server%
timeout 1 >NUL
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Invoke-WebRequest %server%/%package% -OutFile %dir%\%package%
explorer %dir%
exit