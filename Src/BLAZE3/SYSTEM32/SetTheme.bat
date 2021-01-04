@echo off
color f4
title Custom Theme
set themedir=%1
if "%themedir%" == "Default" (goto themereset)
if not exist \ThemeSettings\Themes\%themedir%.hta (goto themereset)
@echo off
(
echo set Themestart=\ThemeSettings\Themes\%themedir%.hta
) > \BLAZE3\SYSTEM32\CONFIG\ThemeConfig.bat
Taskkill /F /IM mshta.exe
call \BLAZE3\SYSTEM32\CONFIG\ThemeConfig.bat
start %Themestart%
start \BLAZE3\SYSTEM32\clock.hta
start \BLAZE3\SYSTEM32\infooverlay.hta
exit

:themereset
(
echo set Themestart=\BLAZE3\SYSTEM32\taskbar.hta
) > \BLAZE3\SYSTEM32\CONFIG\ThemeConfig.bat
call str \BLAZE3\SYSTEM32\taskbar.hta
exit