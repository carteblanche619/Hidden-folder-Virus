@echo off

:MAIN
title Hidden_Files_Virus_Cure_by_Ab}{I
mode con cols=88 lines=10
cls
echo.
echo This program is made to unhide files hidden by Virus. Copy this file in infected folder first and then launch it.  
echo.
echo Press "1" to unhide the files in present folder.  
echo.
echo Press "2" to hide the files again.
echo.
echo Press "X" to terminate the program if you are not in the hidden folder.

:_set
set _ok=
set /p _ok=Enter your choice :
if "%_ok%" == "1" GOTO:CURE
if "%_ok%" == "2" GOTO:VIRUS
if "%_ok%" == "X" GOTO:END
if "%_ok%" == "x" GOTO:END
GOTO:MAIN


:CURE
cls
mode con cols=88 lines=10
echo.
echo Please wait ...
ping -n 2 localhost >nul
attrib -s -h -a /s /d *.*
ping -n 2 localhost >nul
cls
GOTO:END

:VIRUS
cls
mode con cols=88 lines=10
echo.
echo Please wait ...
ping -n 2 localhost >nul
attrib +s +h +a /s /d *.*
attrib -s -h -a /s /d CURE.bat
attrib -s -h -a /s /d *.lnk
ping -n 2 localhost >nul
cls
GOTO:END


:END
EXIT
