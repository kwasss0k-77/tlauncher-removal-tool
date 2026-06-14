@echo off
chcp 65001
title TLauncher Removal Tool v1.1
color 06
cls

echo.
echo.
if NOT exist "%~dp0lang.txt" (
    echo by kwasss.
    echo ----- ----- ----- :3 ----- ----- -----
    echo Выберите язык / Select language
    echo 1. English
    echo 2. Russian
    
    set /p "choice0=Выбор: / Choice: "
) else (
    set /p actual_lang=<"%~dp0lang.txt"
)

if "%choice0%"=="1" goto en
if "%choice0%"=="2" goto ru

if defined actual_lang set "actual_lang=%actual_lang: =%"
if not "%actual_lang%"=="" goto %actual_lang%

:en
(echo en)>"%~dp0lang.txt"
cls
echo by kwasss.
echo ----- ---- --- -- - :3 - -- --- ---- -----
echo Hello! This program removes remnants of Tlauncher files from the system, as the uninstaller itself removes only a small amount of its own files (usually 0.5-3 GB).
echo Please note that the game is only removed for the current user, and from the main C:\ drive.
echo.
echo ATTENTION!!!!! The program does NOT delete ALL FOLDERS!!!! Configs, worlds, shaders, settings, and assemblies will all go to the backup folder.
echo.
echo -- Instructions --
echo 1. Select a mode.
echo 2. Full removal mode: Press any button in the window that opens and wait for the removal to complete. Press any button. Done!
echo 3. Uninstall mode: Press any button and follow the instructions in the window.
echo.
echo.



echo RU: Select the uninstall mode:
echo 1. Complete uninstall (ALL FOLDERS created by tlauncher for the user, including .minecraft)
echo 2. Uninstaller (from tlauncher, removes very little, leaving worlds, shaders, resource packs, etc.)
echo.

set /p choice1= Choice: 

if %choice1% == 1 (
cls
goto full_mode
)
if %choice1% == 2 (
cls
goto uni
)





:ru
(echo ru)>"%~dp0lang.txt"
cls
echo by kwasss.
echo ----- ---- --- -- -  :3  - -- --- ---- -----
echo Привет! Это программа по удалению остатков файлов Tlauncher из системы, т.к. сам деинсталлер удаляет совсем немного своих файлов (обычно 0.5-3гб).
echo Обратите внимание, что удаляется игра только у текущего пользователя, и на основном диске C:\.
echo.
echo ВНИМАНИЕ!!!!! Программа удаляет НЕ ВСЕ ПАПКИ!!!! Конфиги, миры, шейдеры, настройки, сборки - всё это пойдёт в папку backup.
echo.
echo -- Инструкция --
echo 1. Выберите режим.
echo 2. Режим полного удаления: Нажмите любую кнопку в открывшемся окне и ждите конца удаления. Нажмите любую кнопку. Готово!
echo 3. Режим деинсталляции: Нажмите любую кнопку, и следуйте инструкциям в окне.
echo.
echo.


echo RU: Выберите режим удаления:
echo 1. Полное удаление (ВСЕ ПАПКИ, которые создал tlauncher у пользователя, в том числе .minecraft)
echo 2. Деинсталлятор (от тлаунчера, удаляет совсем немного, оставляя миры, шейдеры, ресурс-паки и т.д.)
echo.

set /p choice1= Выбор: 

if %choice1% == 1 (
cls
goto full_mode
)
if %choice1% == 2 (
cls
goto uni
)




:full_mode
cls
echo Loading...
echo Open "full_delete.bat"...
if exist "%~dp0modes\full_delete.bat" (
	start "Full delete mode (TRT v1.1)" cmd /c "%~dp0modes\full_delete.bat"
	echo "full_delete.bat" successfully launched.
	timeout /t 3
	exit
) else (
	echo Critical error, file not found! Try reinstalling the program. PATH: modes\full_delete.bat
	pause
	exit
)



:uni
cls
echo Loading...
echo Open "uninstall_only.bat"...
echo %~dp0modes\uninstall_only.bat
if exist "%~dp0modes\uninstall_only.bat" (
	start "Uninstall Mode (TRT v1.1)" cmd /c "%~dp0modes\uninstall_only.bat"
	echo "uninstall_only.bat" successfully launched.
	timeout /t 3
	exit
) else (
	echo Critical error, file not found! Try reinstalling the program. PATH: modes\uninstall_only.bat
	pause
	exit
)