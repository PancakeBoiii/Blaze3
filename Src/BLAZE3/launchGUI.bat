@echo off
color f4
title BLAZE3 MANAGER
cls
:start
start \BLAZE3\SYSTEM32\Screens\Startup.hta >NUL
start \BLAZE3\SYSTEM32\Drivers\CBDriver.vbs
Taskkill /F /IM explorer.exe >NUL
call \BLAZE3\SYSTEM32\CONFIG\ThemeConfig.bat
if not exist %themestart% (goto ResetTheme)
goto continue

:continue
start \BLAZE3\SYSTEM32\clock.hta >NUL
start \BLAZE3\SYSTEM32\infooverlay.hta >NUL
start \BLAZE3\SYSTEM32\Battery.bat >NUL
cls
type \BLAZE3\SYSTEM32\logo
start %Themestart% >NUL
pause
exit




:ResetTheme
Taskkill /F /IM mshta.exe >NUL
type \BLAZE3\SYSTEM32\logo
call \BLAZE3\SYSTEM32\STR.bat \BLAZE3\SYSTEM32\taskbar.hta >NUL
echo THEME MISSING! RESETTING THEME TO DEFAULT
goto continue
