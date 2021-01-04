@echo off
mode con: cols=78 lines=20
cd \BLAZE3\SYSTEM32\
title BLAZE3 PROMPT
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
cls
goto commandbegin

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof




:commandbegin
cls
call :ColorText 0C "                                 [ BLAZE3 ]"
echo(
call :ColorText 0C "                    Copyright 2020 - BLAZE3 Technologies "
echo(
call :ColorText 0C "                     PROTOTYPING SPACE - UNIVERSAL-WIN"
echo(
echo(
call :ColorText 0A "INFO - if you want to access traditional Windows Command prompt enter CMD"
echo(
echo.
echo.
:command
set /p "variable=%username%@%computername% $> "
if "%variable%"=="Creeper!" (color 0a && echo Aww Man)
if "%variable%"=="" (goto command)
if "%variable%"=="CHEESE" call :ColorText 06 "GROMIT" && echo( && goto command
if "%variable%"=="CMD" cmd
if "%variable%"=="cmd" cmd
if "%variable%"=="exit" exit
if "%variable%"=="cecho" call \BLAZE3\SYSTEM32\MODULES\ColorEcho.bat
if "%variable%"=="cls" cls & goto command
start cmd /k " %variable% " && goto command
cls
goto commandbegin