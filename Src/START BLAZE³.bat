@echo off
color f4
del /f /s /q %temp%\*.bat
DEL /F /S /Q %TEMP%
title BLAZE3 File System Reader
:start
cls

set Random1=%random%

echo Type the BLAZE3 USB Drive Letter
set /p DriveL=
:a
if exist %DriveL%:\ (goto Yes) else (goto a)

:Yes
copy %DriveL%:\EMULATE.BL0 %temp%\%Random1%.bat
start %temp%\%Random1%.bat
cls
exit
