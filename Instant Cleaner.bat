::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDBaSQGRGG6sOpEZ++Pv4Pq7i0MOQOMxbM/41rGPLuUBqkznephj33lV+A==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF25
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHWQ=
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbQs=
::ZQ05rAF9IAHYFVzEqQIZJghATQqWfEi2A7QS7fqb
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDC2ML3+7CKFcy+T+7uSCsC0=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWHKK8UcjDB5CLA==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEVou/8PQUZwqHOXieA6NcuripvYo=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDBaSQGRGG6sOpEZ++Pv4Pq7i0MOQOMxbML41rGPLuUB1VO1O8ZjhzRfgM5s
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Instant Cleaner by KneesDev
IF "%~1" == "normal" GOTO normal
IF "%~1" == "fast" GOTO fast
IF "%~1" == "exp" GOTO exp
echo Instant Cleaner version 1.0.1
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
cls
echo Select a mode to continue with:
echo [1] Normal
echo [2] Fast-mode
echo [3] Experimental (beta)
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
echo Cleaning DNS records from cache...
ipconfig /FlushDNS
ping localhost -n 01 >nul
echo Optimizing C: drive....
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