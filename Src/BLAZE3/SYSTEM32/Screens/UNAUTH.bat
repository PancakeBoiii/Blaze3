@echo off
cls
color f4
Taskkill /F /IM explorer.exe >NUL
\BLAZE3\SYSTEM32\DEATHSCREENS\DGT.bat
Taskkill /F /IM cmd.exe >NUL
exit