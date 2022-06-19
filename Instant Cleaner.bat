@echo off
title Instant Cleaner by KneesDev
IF "%~1" == "normal" GOTO normal
IF "%~1" == "fast" GOTO fast
IF "%~1" == "exp" GOTO exp
echo Instant Cleaner version 1.0.2 (pre-release)
echo.
echo Developed by KneesDev
echo https://github.com/kneesdev
ping localhost -n 02 >nul
cls
echo An app development takes so much time. I develop apps and get nothing in return.
echo.
echo Please consider donating for the work I've done so far:
echo https://paypal.me/kneesdev
ping localhost -n 05 >nul
:modeselect
color
cls
echo Select a mode to continue with:
echo [1] Normal
echo [2] Fast-mode
echo [3] Experimental
echo [4] Minimal
echo.
echo (don't forget to confirm your selection by pressing Enter)
echo.
set /p mode=
if '%mode%'=='none' goto reset
if '%mode%'=='1' goto normal
if '%mode%'=='2' goto fast
if '%mode%'=='3' goto exp
if '%mode%'=='4' goto min

:reset
color
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
color 0c
echo Fast-mode isn't recommended as it is pretty buggy on most devices and there's a chance that some files get corrupted!
echo Do you want to proceed?
echo.
echo (accepted input is Y/N)
echo.
set /p fastm=
if '%fastm%'=='none' goto reset
if '%fastm%'=='Y' goto fastproc
if '%fastm%'=='N' goto modeselect
if '%fastm%'=='y' goto fastproc
if '%fastm%'=='n' goto modeselect
:fastproc
color
echo Fast-mode is running...
%windir%\system32\rundll32.exe advapi32.dll,ProcessIdleTasks
echo Fast-mode operation finished.
ping localhost -n 03 >nul
goto modeselect

:exp
cls
echo Flushing DNS...
ipconfig /FlushDNS
ping localhost -n 01 >nul
defrag c:
echo Cleaning junk files...
cleanmgr /verylowdisk /d
echo Cleaning Prefetch folder...
rd C:\Windows\prefetch /s /q
md C:\Windows\prefetch
echo Cleaning Microsoft Store cache...
wsreset.exe
echo Experimental operation finished.
ping localhost -n 03 >nul
goto modeselect

:min
cls
echo Minimal is running...
rd %temp%
mkdir %temp%
echo Minimal operation finished.
ping localhost -n 03 >nul
goto modeselect