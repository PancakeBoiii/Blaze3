@echo off
cls
color f4
set /p BLDL=Enter Bloot Drive Letter : 
set /p "DOCDIR=Enter the Documents Directory : "
cd %BLDL%:\COPYback\
mkdir %USERNAME%
xcopy /e /v /Y %DOCDIR% %BLDL%:\COPYback\%USERNAME%
