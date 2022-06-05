@echo off
title Instant Cleaner by KneesDev
IF "%~1" == "normal" GOTO normal
IF "%~1" == "fast" GOTO fast
IF "%~1" == "exp" GOTO exp
echo Instant Cleaner version 1.0.0
echo.
echo Developed by KneesDev
echo https://github.com/kneesdev
ping localhost -n 02 >nul
:modeselect
cls
echo Select a mode to continue with:
echo [1] Normal
echo [2] Fast-mode
echo [3] Experimental (coming soon)
echo.
echo (don't forget to confirm your selection by pressing Enter)
echo.
set /p mode=
if '%mode%'=='none' goto reset
if '%mode%'=='1' goto normal
if '%mode%'=='2' goto fast
if '%mode%'=='3' goto exp

:reset
goto modeselect

:normal
cls
echo Cleaning temporary files...
rd %temp%
echo Cleaning junk files...
del /f /s /q %systemdrive%\*.tmp
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*._mp
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*.log
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*.gid
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*.chk
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*.old
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\recycled\*.*
ping localhost -n 01 >nul
del /f /s /q %windir%\*.bak
ping localhost -n 01 >nul
del /f /s /q %windir%\prefetch\*.*
ping localhost -n 01 >nul
rd /s /q %windir%\temp & md %windir%\temp
ping localhost -n 01 >nul
del /f /q %userprofile%\cookies\*.*
ping localhost -n 01 >nul
del /f /q %userprofile%\recent\*.*
ping localhost -n 01 >nul
del /f /s /q “%userprofile%\Local Settings\Temporary Internet Files\*.*”
ping localhost -n 01 >nul
del /f /s /q “%userprofile%\Local Settings\Temp\*.*”
ping localhost -n 01 >nul
del /f /s /q “%userprofile%\recent\*.*”
ping localhost -n 01 >nul
echo Normal mode operation finished
ping localhost -n 03 >nul
goto modeselect

:fast
cls
echo Attempting to launch command...
%windir%\system32\rundll32.exe advapi32.dll,ProcessIdleTasks
echo Fast-mode operation finished.
ping localhost -n 03 >nul
goto modeselect

:exp
cls
msg "%username%" This feature is coming in another update.
goto modeselect