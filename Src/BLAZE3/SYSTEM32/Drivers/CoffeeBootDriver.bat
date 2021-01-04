@echo off
setLocal Enabledelayedexpansion

:start
for %%d in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do (
if exist %%d:\CoffeeBoot.bat (
     ECHO Device Found : %%d
     %%d:
     if "!%%dran!"=="0" start %%d:\CoffeeBoot.bat && set /a %%dran=1
)
if not exist %%d:\CoffeeBoot.bat (
								set /a %%dran=0
								)
)
timeout 2 >NUL
cls
goto start