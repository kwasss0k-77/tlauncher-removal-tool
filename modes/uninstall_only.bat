@echo off
chcp 65001
title Uninstall Mode (TRT v1.1)
color 06
:start
cls
echo Your choice - uninstall mode. Ваш выбор - деинсталляция от тлаунчера
echo Нажмите любую кнопку для продолжения . . .
pause
cls

set mine=%appdata%\.minecraft
set tl=%appdata%\.tlauncher
set FILE_TIME=%TIME: =0%
set FILE_TIME=%FILE_TIME:~0,2%-%FILE_TIME:~3,2%-%FILE_TIME:~6,2%

if not exist "%~dp0..\log" md "%~dp0..\log"



set "log=%~dp0..\log\log_uninstallmode_%DATE%_%FILE_TIME%.txt"
set "backup=%~dp0..\backup"
echo [%DATE% %TIME:~0,8%] Log create > "%log%"
echo [%DATE% %TIME:~0,8%] Log create
echo [%DATE% %TIME:~0,8%] Log path: %log%
echo [%DATE% %TIME:~0,8%] Log path: %log% >> "%log%"


echo [%DATE% %TIME:~0,8%] Prepare to uninstall... >> "%log%"
echo [%DATE% %TIME:~0,8%] Prepare to uninstall...
if NOT exist %tl%\tl-uninstall.exe (
    echo [%DATE% %TIME:~0,8%] Oops! The tl-uninstall.exe not found. You most likely uninstalled TLauncher earlier.
    echo [%DATE% %TIME:~0,8%] Oops! The tl-uninstall.exe not found. You most likely uninstalled TLauncher earlier. >> "%log%"
    pause
    exit
)
echo [%DATE% %TIME:~0,8%] Open folder with "tl-uninstall.exe"... >> "%log%"
echo [%DATE% %TIME:~0,8%] Open folder with "tl-uninstall.exe"...
echo RU Итак, найдите в открывшейся папке файл "tl-uninstall.exe" и откройте его
echo EN So, find in opened folder file "tl-uninstall.exe" and open it.

explorer "%appdata%\.tlauncher"

echo RU Когда закончится деинсталляция, нажмите любую кнопку
echo EN When uninstall is over, press any key
pause
echo [%DATE% %TIME:~0,8%] Success! >> "%log%"
echo [%DATE% %TIME:~0,8%] Success! Успешно!
exit