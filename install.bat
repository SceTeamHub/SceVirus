@echo off
title Rickroll by SceHosting
mode 1000,50
color 0a
setlocal enabledelayedexpansion

set soundPath="%~dp0scary_song.mp3"
set boomMessage="BOOM! Your system is mine!"
set rickrollURL="https://www.youtube.com/watch?v=dQw4w9WgXcQ"

if exist %soundPath% start "" %soundPath%

cls
echo SYSTEM FROZEN...
color 0f
timeout /t 2 >nul

for /l %%C in (1,1,10) do (
    color 1f
    timeout /t 0.5 >nul
    color cf
    timeout /t 0.5 >nul
)

cls
echo SYSTEM LOCKED - RESTARTING NOW...
timeout /t 3 >nul

cls
echo SYSTEM RESTARTING...
timeout /t 2 >nul
cls
echo A critical error occurred. Your system needs to shut down.
timeout /t 2 >nul
color 0f
echo SYSTEM ERROR - RESTARTING NOW...
timeout /t 5 >nul

if exist %soundPath% start "" %soundPath%

start %rickrollURL%

cls
echo SYSTEM LOCKED - STUCK IN RICKROLL
timeout /t 999999 >nul

exit
