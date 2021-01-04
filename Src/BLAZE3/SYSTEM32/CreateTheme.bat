@echo off
color f4
title Custom Theme
set randomstart=%random%
set randombg=%random%
set /p StartButton=Please enter the file path of the start button image : 
set /p Background=Please enter file path of the taskbar background(1080px wide 44px height) : 
set /p Name=Enter theme name : 
mkdir \ThemeSettings\Themes\%name%
copy %StartButton% \ThemeSettings\Themes\%name%\%randomstart%.png
copy %Background% \ThemeSettings\Themes\%name%\%randombg%.png
set tback=\ThemeSettings\Themes\%name%\%randombg%.png
set tstart=\ThemeSettings\Themes\%name%\%randomstart%.png
@echo off
(
call \ThemeSettings\tb.bat %tback% %tstart%
) > \ThemeSettings\Themes\%Name%.hta
exit