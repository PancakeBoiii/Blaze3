@echo off
powershell -Command "(gc %1) -replace '%2', '%3' | Out-File -encoding ASCII %4"