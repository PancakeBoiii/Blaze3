@echo off & setlocal ENABLEDELAYEDEXPANSION
SET "volume=C:"
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree %volume%') DO (
    SET "diskfree=!disktotal!"
    SET "disktotal=!diskavail!"
    SET "diskavail=%%j"
)
SET /a diskused=%disktotal:~0,-9% - %diskavail:~0,-9%
ECHO(Information for volume %volume%
ECHO(TOTAL SIZE  ---------- %disktotal:~0,-9% GB
ECHO(AVAILABLE SIZE ------- %diskavail:~0,-9% GB
ECHO(USED SIZE ------------ %diskused% GB
set /p "totaldsktmp=%disktotal:~0,-9%"
pause