@echo off
cls
set "text=%1"

rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak %text% >> "temp%num%.vbs"
start temp%num%.vbs
timeout 1 >NUL
del temp%num%.vbs
