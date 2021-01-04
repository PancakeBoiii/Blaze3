@echo off
color F4
cls
set package=%1
set server=http://horizongames.ml/bloot/packages/
title apt-get %package%
cls
set /p dir="Please enter Output directory : "
echo Searching for %package%...
timeout 1 >NUL
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Invoke-WebRequest http://horizongames.ml/bloot/packages/%package% -OutFile %dir%\%package%
explorer %dir%
exit