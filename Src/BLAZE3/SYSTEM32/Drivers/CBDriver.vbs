Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c \BLAZE3\SYSTEM32\Drivers\CoffeeBootDriver.bat"
oShell.Run strArgs, 0, false