@echo off
cls
title Battery
:battloop
color 0A
mode con: cols=16 lines=2
for /f "tokens=2 delims==" %%E in ('wmic path Win32_Battery get EstimatedChargeRemaining /value') do (set "Ba=%%E")
Echo Battery = %Ba%%%
if %Ba%%% gtr 50 color 0a
if %Ba%%% lss 50 color 06
if %Ba%%% leq 15 color 0c
timeout /t 2 /nobreak > nul
cls
goto battloop