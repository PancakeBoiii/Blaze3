set BGS="%1"
set SBS="%2"

echo ^<html^>^<head^>^<title^>BLOOTINTERFACE^</title^> 
echo ^<style type="text/css"^>
echo body{
echo 	background-image:url(%BGS%);
echo 	background-size: cover;
echo 	background-attachment: fixed;
echo }
echo .content{
echo 	background: white;
echo 	width: 50%;
echo 	padding: 40px;
echo 	margin: 100px auto;
echo }
echo ^</style^>
echo ^<hta:application id="oBVC" 
echo applicationname="BLOOT CUSTOM IDE"  
echo version="1.0" 
echo maximizebutton="no" 
echo minimizebutton="no" 
echo sysmenu="no" 
echo Caption="no" 
echo InnerBorder = 'No'
echo MaximizeButton = 'No'
echo MinimizeButton = 'No'
echo Navigable = 'No'
echo Scroll = 'No'
echo ScrollFlat = 'No'
echo Selection = 'No'
echo Border = 'none'
echo ^</head^>^<body scroll="no"^> 
echo ^<font face="Lucida Console" size="4" color="white"^> 
echo.
echo.
echo ^<div class="content"^>
echo.
echo ^</div^>
echo.
echo ^<INPUT  type="image" style="width:40px;height:40px;" src=%SBS% NAME="StartButton" VALUE="Click" alt="Applications"^>
echo ^<SCRIPT FOR="StartButton" EVENT="onClick" LANGUAGE="VBScript"^>
echo Set WshShell = CreateObject("WScript.Shell")
echo WshShell.Run "\BLAZE3\SYSTEM32\AppMenu.hta ''"
echo ^</SCRIPT^>
echo.
echo ^<INPUT  type="image" src="\BLAZE3\Resources\file.ico" style="width:40px;height:40px;" NAME="FileButton" VALUE="Click" alt="File Manager"^>
echo ^<SCRIPT FOR="FileButton" EVENT="onClick" LANGUAGE="VBScript"^>
echo Set WshShell = CreateObject("WScript.Shell")
echo WshShell.Run "\BLAZE3\SYSTEM32\deskOpen.bat ''"
echo ^</SCRIPT^>
echo.
echo ^<INPUT  type="image" src="\BLAZE3\Resources\console.png" style="width:40px;height:40px;" NAME="ConsoleButton" VALUE="Click" alt="CMD"^>
echo ^<SCRIPT FOR="ConsoleButton" EVENT="onClick" LANGUAGE="VBScript"^>
echo Set WshShell = CreateObject("WScript.Shell")
echo WshShell.Run "\BLAZE3\SYSTEM32\BlazePrompt.bat ''"
echo ^</SCRIPT^>
echo.
echo ^<INPUT  type="image" src="\BLAZE3\Resources\win.png" style="width:40px;height:40px;" NAME="WindowsButton" VALUE="Click" alt="RETURN TO WINDOWS"^>
echo ^<SCRIPT FOR="WindowsButton" EVENT="onClick" LANGUAGE="VBScript"^>
echo Set WshShell = CreateObject("WScript.Shell")
echo WshShell.Run "\BLAZE3\SYSTEM32\WINGUI.bat ''"
echo ^</SCRIPT^>
echo.
echo.
echo ^<INPUT  type="image" src="\BLAZE3\Resources\STORE.png" style="width:50px;height:40px;" NAME="StoreButton" VALUE="Click" alt="Bl00t Commands Help Sheet"^>
echo ^<SCRIPT FOR="StoreButton" EVENT="onClick" LANGUAGE="VBScript"^>
echo Set WshShell = CreateObject("WScript.Shell")
echo WshShell.Run "http://horizongames.ml/bloot/store/main/ ''"
echo ^</SCRIPT^>
echo.
echo.
echo ^<script language="VBScript"^>
echo     window.resizeTo 4000,40
echo     WindowTop  = (window.screen.availHeight - 0)
echo     window.moveTo WindowLeft, WindowTop
echo ^</script^>
echo.
echo.
echo ^</font^> 
echo ^</body^>
echo.  
echo ^</html^> 