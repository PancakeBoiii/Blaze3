@echo off
cls
color f4
(
echo ^<html^>^<head^>^<title^>Microsoft Windows^</title^> 
echo. 
echo ^<hta:application id="oBVC" 
echo applicationname="RSOD"  
echo version="1.0" 
echo Selection = 'No'
echo maximizebutton="no" 
echo minimizebutton="no" 
echo sysmenu="no" 
echo Caption="no" 
echo InnerBorder = 'No'
echo windowstate="maximize"/^> 
echo. 
echo ^</head^>^<body bgcolor="#a60507" scroll="no"^> 
echo ^<font face="Lucida Console" size="4" color="white"^> 


echo ^<style type="text/css"^>
echo      * {
echo    cursor: none;
echo      }
echo ^</style^>

echo ^<p^>A problem has been detected and windows has been LOCKED to prevent damage to your computer.^</p^> 
echo. 
echo ^<p^>DRIVER_IRQL_NOT_LES_OR_EQUAL^</p^> 
echo. 
echo ^<p^>If this is the first time you've seen this stop error screen, restart your computer.^</p^> 
echo. 
echo. 
echo ^<p^>***  gv3.sys - Address %random% base at %random%, Timestamp %time%^</p^> 
echo. 
echo ^<p^>SYSTEM INFORMATION :^</p^> 
echo ^<p^>BASE OS : %OS%^</p^> 
echo ^<p^>DEFAULT DRIVE : %SystemDrive%^</p^>
echo ^<p^>       -    ^</p^>
echo ^<p^>PROCESSOR INFORMATION :^</p^> 
echo ^<p^>ARCHITECTURE : %PROCESSOR_ARCHITECTURE%^</p^> 
echo ^<p^>IDENTIFIER : %PROCESSOR_IDENTIFIER%
echo ^<p^>USAGE : %PROCESSOR_LEVEL%^</p^> 
echo ^<p^>REVISION : %PROCESSOR_REVISION%^</p^> 
echo ^<p^>Contact your system administrator or technical support group for further assistance.^</p^> 
echo.
echo. 
echo ^</font^> 
echo ^</body^>
echo.
echo ^<script language="javascript"^>
echo function noClick^(^) {
echo if ^(^(event.button==1^)^|^|^(event.button==2^)^) {
echo alert^('Error: 00101100x00100100 missing WindowsStart.dll'^)
echo }
echo }
echo document.onmousedown=noClick
echo ^</script^>
echo.  
echo ^</html^> 
) > BL00T.hta 

start "" /wait "BL00T.hta"

del /f /q "BL00T.hta" > nul
  