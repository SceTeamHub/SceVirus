@echo off
title By SceHosting
mode 1000,50
color 0a
setlocal enabledelayedexpansion

set soundPath="%~dp0music.mp3"
set boomMessage="BOOM! Your system is mine!"
set rickRollURL="https://www.youtube.com/watch?v=dQw4w9WgXcQ"

for /l %%C in (1,1,5) do (
    color 1f
    timeout /t 1 >nul
    color cf
    timeout /t 1 >nul
)

if exist %soundPath% start "" %soundPath%

cls
echo SYSTEM FROZEN...
color 1f
timeout /t 2 >nul

for /l %%C in (1,1,10) do (
    color 1f
    timeout /t 0.5 >nul
    color cf
    timeout /t 0.5 >nul
)

for /l %%X in (1,1,5) do (
    start cmd /c echo !boomMessage!
    timeout /t 1 >nul
)

cls
echo SYSTEM LOCKED - RESTARTING NOW...
timeout /t 5 >nul

cls
echo A critical error occurred. Your system needs to shut down.
timeout /t 5 >nul
color 1f
echo SYSTEM ERROR - RESTARTING NOW...
timeout /t 5 >nul

for /l %%A in (1,1,5) do (
    color 0f
    timeout /t 0.5 >nul
    color 4f
    timeout /t 0.5 >nul
)

cls
echo SYSTEM INITIATING - DO NOT TURN OFF THE COMPUTER...
timeout /t 3 >nul

cls
echo Booting up in safe mode...
timeout /t 2 >nul
color 2f
echo SYSTEM SECURE MODE ACTIVATED
timeout /t 2 >nul

cls
echo Final check before launch...
timeout /t 2 >nul
color 5f
echo SYSTEM LAUNCHING...
timeout /t 2 >nul

cls
echo SYSTEM ONLINE - WELCOME BACK!
timeout /t 2 >nul

start "" "%rickRollURL%"
timeout /t 5 >nul

cls
echo SYSTEM DISABLED - MOUSE INVERSION ACTIVATED
timeout /t 2 >nul

reg add "HKCU\Control Panel\Cursors" /v "MouseTrails" /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Cursors" /v "Inverted" /t REG_DWORD /d 1 /f

timeout /t 5 >nul

exit

:Animate
set str=%~1
set "temp="
for /l %%A in (0,1,250) do (
    set "temp=!temp!."
    cls
    echo %str%!temp!
    timeout /t 0.1 >nul
)
goto :eof
