@echo off
cls
color f4
title Blaze3 Task EDITOR
:start
echo =========
echo CPU INFO 
echo ARCHITECTURE : %PROCESSOR_ARCHITECTURE%
echo IDENTIFIER : %PROCESSOR_IDENTIFIER%
echo USAGE : %PROCESSOR_LEVEL%
echo REVISION : %PROCESSOR_REVISION%
echo =========
echo.
echo 1. Start Task
echo 2. Close Task
echo 3. Task List
set /p choice=SELECT A CHOICE : 
if '%choice%'=='1' goto starttask
if '%choice%'=='2' goto stoptask
if '%choice%'=='3' goto tasklist
else %choice% goto start
goto start

:starttask
set /p choice=SELECT A PROCESS TO START : 
start %choice%.exe
cls
goto start

:stoptask
set /p choice=SELECT A PROCESS TO STOP : 
Taskkill /F /IM %choice%.exe
cls
goto start

:tasklist
cls
tasklist
goto start