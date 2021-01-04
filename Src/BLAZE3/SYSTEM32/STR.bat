@echo off
color f4
title Custom Theme
set themedir=%1
@echo off
(
echo set Themestart=%themedir%
) > \BLAZE3\SYSTEM32\CONFIG\ThemeConfig.bat
Taskkill /F /IM mshta.exe
call \BLAZE3\SYSTEM32\CONFIG\ThemeConfig.bat
start %Themestart%
start \BLAZE3\SYSTEM32\clock.hta
start \BLAZE3\SYSTEM32\infooverlay.hta

