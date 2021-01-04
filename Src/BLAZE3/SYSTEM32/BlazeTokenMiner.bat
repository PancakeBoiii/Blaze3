@echo off
color 4f
mode con: cols=78 lines=20
cd \BLAZE3\SYSTEM32\
title Blaze Token Miner
goto commandbegin



:commandbegin
cls
type logo
echo(
echo ====================Token Miner====================
echo(
echo.
echo.
echo.
:command
set /p "variable=%username%@%computername% $> "
if "%variable%"=="start mining" goto load
if "%variable%"=="exit" exit
if "%variable%"=="cls" cls & goto command
if "%variable%"=="" echo UNKOWN COMMAND && goto help
else goto help
cls
goto commandbegin

:help
echo =========HELP=========
echo Start Mining 
echo EXIT
echo ======================
goto command

:load
start \BLAZE3\SYSTEM32\enc.bat >NUL
timeout 1 /nobreak >NUL
set /p TotalTokens=<\BLAZE3\SYSTEM32\min.datb
echo %TotalTokens%
pause
timeout 1 /nobreak >NUL
start \BLAZE3\SYSTEM32\decr.bat >NUL
goto Mine
:Mine
cls

echo ========================
echo Do CTRL + C to cancel Mining
echo ========================
for /f "tokens=2 delims==" %%E in ('wmic MEMORYCHIP get Capacity /value') do (set "Ba=%%E")
set "tokencountcalc=%Ba%%"
if %tokencountcalc% gtr 1073741824 (set TokenCount 10) >NUL
set TokenCount=%tokencountcalc:~0,1%%
echo %TokenCount% Tokens/30 seconds
echo.
set /a TotalTokens=%TotalTokens% + %TokenCount%
echo Total Mined : %TotalTokens%
start \BLAZE3\SYSTEM32\decr.bat >NUL
echo %TotalTokens%> min.datb
start \BLAZE3\SYSTEM32\enc.bat >NUL
timeout 30 /nobreak >NUL
goto Mine
exit
