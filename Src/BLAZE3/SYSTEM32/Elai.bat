@ECHO OFF
title Extreamly Lightweight Artificial Inteligance
COLOR 03
mode 50,25
cls
:getName
set "name=%username%"
set favvid=0
set hack=0
:hey
:hithere 
:hello
:hi
setlocal enabledelayedexpansion
set string[0]=Hello %name%.
set string[1]=Greetings %name%.
set string[2]=Hi %name%.
set /a idx=%random% %%3
call \BLOOTOS\SYSTEM32\tts "!string[%idx%]!"
echo !string[%idx%]!
:begin
cls
call :art
echo.
echo.
set TALK=TypeSomething
SET /P TALK=$: 
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin
:unknown
cls
call :art
call \BLOOTOS\SYSTEM32\tts "I dont know how to respond to that."
echo I dont know how to respond to that.
call \BLOOTOS\SYSTEM32\tts "Can you tell me a response or command i can say when you type %TALK% ?"
echo Can you tell me a response or command i can say when you type "%TALK%" ? (M=message,C=Command,N=No) 
SET /P ANSW.=
if /I "%ANSW.:~0,1%"=="M" goto ADDNEW
if /I "%ANSW.:~0,1%"=="N" goto begin
if /I "%ANSW.:~0,1%"=="C" goto ADDNEWCommand
if /I "%ANSW.:~0,1%"=="M"
if NOT /I "%ANSW.:~0,1%" goto begin
:ADDNEW
call \BLOOTOS\SYSTEM32\tts "Tell me ways to respond to %TALK% and I will choose my favorite."
echo Tell me ways to respond to "%TALK%" and I will choose my favorite.
set /P Desc1=
set /P Desc2=
set /P Desc3=
echo :%TALK: =% >> "%~F0"
setlocal enabledelayedexpansion
set string[0]=%Desc1%.
set string[1]=%Desc2%.
set string[2]=%Desc3%.
set /a idx=%random% %%3
echo echo !string[%idx%]! >> "%~F0" 
echo call \BLOOTOS\SYSTEM32\tts "!string[%idx%]!" >> "%~F0" 
echo exit /B 0 >> "%~F0"
call \BLOOTOS\SYSTEM32\tts "THANKS"
echo THANKS
goto begin
:ADDNEWCommand
call \BLOOTOS\SYSTEM32\tts "Tell me the command to run when you type %TALK% and I will add it to my database."
echo Tell me the command to run when you type "%TALK%" and I will add it to my database.
set /P Desc1=
echo :%TALK: =% >> "%~F0"
setlocal enabledelayedexpansion
set comm=%Desc1%
set /a idx=%random% %%1
echo %comm% >> "%~F0" 
echo exit /B 0 >> "%~F0"
call \BLOOTOS\SYSTEM32\tts "THANKS"
echo THANKS
goto begin
:TypeSomething
setlocal enabledelayedexpansion
set string[0]=Please type something.
set string[1]=I don't learn from you not typing.
set string[2]=Please don't just give me blanks.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:whatdoesyournamemean
setlocal enabledelayedexpansion
set string[0]=It standes for extreamly lightweight Artificial inteligance.
set string[1]=My name means extreamly lightweight Artificial inteligance.
set string[2]=The meaning of my name is extreamly lightweight Artificial inteligance.
set /a idx=%random% %%3
echo !string[%idx%]!


:Greetings 
echo Hello there %username%.  
call \BLOOTOS\SYSTEM32\tts "Greetings %username%."  
exit /B 0 

:art
echo.
echo                      ______
echo                     / ____ \
echo                    / /    \ \
echo                   / /      \ \
echo                   l l      l l
echo                   \ \      / /
echo                    \ \____/ /
echo                     \______/
echo.
echo.
echo.
exit /B 0 

:whatdoesyournamestandfor 
color 0a  
exit /B 0 
:changered 
color f4  
exit /B 0 
:help 
echo yes.  
call \BLOOTOS\SYSTEM32\tts "yes."  
exit /B 0 
:sdf 
