@echo off
chcp 65001
title Full delete mode (TRT v1.1)
color 06
echo Нажмите любую кнопку для продолжения . . .
pause


net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting admin rights...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)


cls
set mine=%appdata%\.minecraft
set tl=%appdata%\.tlauncher
set FILE_TIME=%TIME: =0%
set FILE_TIME=%FILE_TIME:~0,2%-%FILE_TIME:~3,2%-%FILE_TIME:~6,2%

if not exist "%~dp0..\log" md "%~dp0..\log"
if not exist "%~dp0..\backup" md "%~dp0..\backup"




set "log=%~dp0..\log\log_uninstallmode_%DATE%_%FILE_TIME%.txt"
set "backup=%~dp0..\backup"
echo [%DATE% %TIME:~0,8%] Log create > "%log%"
echo [%DATE% %TIME:~0,8%] Log create
echo [%DATE% %TIME:~0,8%] Log path: %log%
echo [%DATE% %TIME:~0,8%] Backup path: %backup%
echo.
echo. >> "%log%"




::delete&backup

if exist %mine%\shaderpacks (
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\shaderpacks"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\shaderpacks"...
	robocopy "%mine%\shaderpacks" "%backup%\shaderpacks" /E
	echo [%DATE% %TIME:~0,8%] Success >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success
	echo.
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\shaderpacks"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\shaderpacks"...
	rd /s /q "%mine%\shaderpacks"
	if exist %mine%\shaderpacks (
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\shaderpacks
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\shaderpacks >> "%log%"
		goto stop01
	)
	echo [%DATE% %TIME:~0,8%] Success delete shaderpacks >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete shaderpacks
	echo.

) else (
	echo Folder ".minecraft\resourcepacks" not found for backup and deletion.
	echo Folder ".minecraft\resourcepacks" not found for backup and deletion. >> "%log%"
	echo.

)




if exist %mine%\mods (
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\shaderpacks"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\shaderpacks"...
	robocopy "%mine%\mods" "%backup%\mods" /E
	echo [%DATE% %TIME:~0,8%] Success >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success
	echo.
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\mods"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\mods"...
	rd /s /q "%mine%\mods"
	if exist %mine%\mods (
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\mods
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\mods >> "%log%"
		goto stop01
	)
	echo [%DATE% %TIME:~0,8%] Success delete mods >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete mods
	echo.

) else (
	echo Folder ".minecraft\mods" not found for backup and deletion.
	echo Folder ".minecraft\mods" not found for backup and deletion. >> "%log%"
	echo.

)




if exist %mine%\resourcepacks (
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\resourcepacks"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\resourcepacks"...
	robocopy "%mine%\resourcepacks" "%backup%\resourcepacks" /E
	echo [%DATE% %TIME:~0,8%] Success >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success
	echo.
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\resourcepacks"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\resourcepacks"...
	rd /s /q "%mine%\resourcepacks"
	if exist %mine%\resourcepacks (
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\resourcepacks
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\resourcepacks >> "%log%"
		goto stop01
	)
	echo [%DATE% %TIME:~0,8%] Success delete resourcepacks >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete resourcepacks
	echo.

) else (
	echo Folder ".minecraft\resourcepacks" not found for backup and deletion.
	echo Folder ".minecraft\resourcepacks" not found for backup and deletion. >> "%log%"
	echo.

)




if exist %mine%\saves (
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\saves"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\saves"...
	robocopy "%mine%\saves" "%backup%\saves" /E
	echo [%DATE% %TIME:~0,8%] Success >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success
	echo.
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\saves"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\saves"...
	rd /s /q "%mine%\saves"
	if exist %mine%\saves (
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\saves
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\saves >> "%log%"
		goto stop01
	)
	echo [%DATE% %TIME:~0,8%] Success delete saves >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete saves
	echo.

) else (
	echo Folder ".minecraft\saves" not found for backup and deletion.
	echo Folder ".minecraft\saves" not found for backup and deletion. >> "%log%"
	echo.

)




if exist %mine%\.fabric (
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\.fabric"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\.fabric"...
	robocopy "%mine%\.fabric" "%backup%\.fabric" /E
	echo [%DATE% %TIME:~0,8%] Success >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success
	echo.
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\.fabric"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\.fabric"...
	rd /s /q "%mine%\.fabric"
	if exist %mine%\.fabric (
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\.fabric
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\.fabric >> "%log%"
		goto stop01
	)
	echo [%DATE% %TIME:~0,8%] Success delete .fabric >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete .fabric
	echo.

) else (
	echo Folder ".minecraft\.fabric" not found for backup and deletion.
	echo Folder ".minecraft\.fabric" not found for backup and deletion. >> "%log%"
	echo.

)




if exist %mine%\hotbar.nbt (
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\hotbar.nbt"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\hotbar.nbt"...
	copy -y %mine%\hotbar.nbt "%backup%"
	echo [%DATE% %TIME:~0,8%] Success >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success
	echo.
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\hotbar.nbt"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\hotbar.nbt"...
	del /f /q %mine%\hotbar.nbt
	if exist %mine%\hotbar.nbt (
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\hotbar.nbt
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\hotbar.nbt >> "%log%"
		goto stop01
	)
	echo [%DATE% %TIME:~0,8%] Success delete hotbar.nbt >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete hotbar.nbt
	echo.

) else (
	echo [%DATE% %TIME:~0,8%] File ".minecraft\hotbar.nbt" not found for backup and deletion.
	echo [%DATE% %TIME:~0,8%] File ".minecraft\hotbar.nbt" not found for backup and deletion. >> "%log%"
	echo.

)




if exist %mine%\options.txt (
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\options.txt"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Backing up ".minecraft\options.txt"...
	copy -y %mine%\options.txt "%backup%"
	echo [%DATE% %TIME:~0,8%] Success >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success
	echo.
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\options.txt"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft\options.txt"...
	del /f /q %mine%\options.txt
	if exist %mine%\options.txt (
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\options.txt
		echo [%DATE% %TIME:~0,8%] Error in: %mine%\options.txt >> "%log%"
		goto stop01
	)
	echo [%DATE% %TIME:~0,8%] Success delete options.txt >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete options.txt
	echo.
	echo. >> "%log%"
) else (
	echo [%DATE% %TIME:~0,8%] File ".minecraft\options.txt" not found for backup and deletion.
	echo [%DATE% %TIME:~0,8%] File ".minecraft\options.txt" not found for backup and deletion. >> "%log%"
	echo.
	echo. >> "%log%"
)




::just_folder_delete

if exist %appdata%\.minecraft (
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Deleting ".minecraft"...
	rd /s /q "%appdata%\.minecraft"
	if exist %appdata%\.minecraft (
		echo [%DATE% %TIME:~0,8%] Error in: %appdata%\.minecraft
		echo [%DATE% %TIME:~0,8%] Error in: %appdata%\.minecraft >> "%log%"
		goto stop01
	)
	echo [%DATE% %TIME:~0,8%] Success delete ".tlauncher" >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete 
	echo.

) else (
	echo [%DATE% %TIME:~0,8%] Folder ".minecraft" not found for deletion.
	echo [%DATE% %TIME:~0,8%] Folder ".minecraft" not found for deletion. >> "%log%"
	echo.

)




if exist %tl% (
	echo [%DATE% %TIME:~0,8%] Deleting ".tlauncher"... >> "%log%"
	echo [%DATE% %TIME:~0,8%] Deleting ".tlauncher"...
	rd /s /q "%tl%"
	if exist %tl% (
		echo [%DATE% %TIME:~0,8%]  Error in: %tl%
		echo [%DATE% %TIME:~0,8%]  Error in: %tl% >> "%log%"
		goto stop01
	)
	echo [%DATE% %TIME:~0,8%] Success delete ".tlauncher" >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete 
	echo.
	echo. >> "%log%"
) else (
	echo [%DATE% %TIME:~0,8%] Folder ".tlauncher" not found for deletion.
	echo [%DATE% %TIME:~0,8%] Folder ".tlauncher" not found for deletion. >> "%log%"
	echo.
	echo. >> "%log%"
)




::prefetch_delete

echo [%DATE% %TIME:~0,8%] Search "TLAUNCHER.EXE" file(s) in Prefetch... >> "%log%"
echo [%DATE% %TIME:~0,8%] Search "TLAUNCHER.EXE" file(s) in Prefetch...
for %%F in ("C:\Windows\Prefetch\TLAUNCHER.EXE*.pf") do (
    echo [%DATE% %TIME:~0,8%] Deleting %%~nxF file... >> "%log%"
    echo [%DATE% %TIME:~0,8%] Deleting %%~nxF file...
    del /f /q "%%F"
)
echo [%DATE% %TIME:~0,8%] Success delete "TLAUNCHER.EXE-*.pf" file(s) >> "%log%"
echo [%DATE% %TIME:~0,8%] Success delete "TLAUNCHER.EXE-*.pf" file(s)


echo [%DATE% %TIME:~0,8%] Search "TL-UNINSTALL.EXE" file(s) in Prefetch... >> "%log%"
echo [%DATE% %TIME:~0,8%] Search "TL-UNINSTALL.EXE" file(s) in Prefetch...
for %%F in ("C:\Windows\Prefetch\TL-UNINSTALL.EXE*.pf") do (
    echo [%DATE% %TIME:~0,8%] Deleting %%~nxF file... >> "%log%"
    echo [%DATE% %TIME:~0,8%] Deleting %%~nxF file...
    del /f /q "%%F"
)
echo [%DATE% %TIME:~0,8%] Success delete "TL-UNINSTALL.EXE*.pf" file(s) >> "%log%"
echo [%DATE% %TIME:~0,8%] Success delete "TL-UNINSTALL.EXE*.pf" file(s)




::start_menu

echo [%DATE% %TIME:~0,8%] Search "TLauncher" folder in Start menu... >> "%log%"
echo [%DATE% %TIME:~0,8%] Search "TLauncher" folder in Start menu...
if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TLauncher" (
	rd /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TLauncher"
	echo [%DATE% %TIME:~0,8%] Success delete "TLauncher" folder >> "%log%"
	echo [%DATE% %TIME:~0,8%] Success delete "TLauncher" folder
) else (
	echo [%DATE% %TIME:~0,8%] Folder "TLauncher" not found for deletion.
	echo [%DATE% %TIME:~0,8%] Folder "TLauncher" not found for deletion. >> "%log%"
)




::icon_cache

echo [%DATE% %TIME:~0,8%] Search "TLauncher_exe" file in Windows icon cache... >> "%log%"
echo [%DATE% %TIME:~0,8%] Search "TLauncher_exe" file in Windows icon cache...
for /F "delims=" %%F in ('where /R "%USERPROFILE%\AppData\Local\Packages" "C_Users_*_AppData_Roaming__minecraft_TLauncher_exe." 2^>nul') do (
    echo [%DATE% %TIME:~0,8%] Deleting %%~nxF file... >> "%log%"
    echo [%DATE% %TIME:~0,8%] Deleting %%~nxF file...
    set "a1b2c3-%%~nxF"
    del /f /q "%%F"
)
echo [%DATE% %TIME:~0,8%] Success delete "C_Users_*_AppData_Roaming__minecraft_TLauncher_exe" file >> "%log%"
echo [%DATE% %TIME:~0,8%] Success delete "C_Users_*_AppData_Roaming__minecraft_TLauncher_exe" file




::firefox_cookies

echo [%DATE% %TIME:~0,8%] Find FireFox... >> "%log%"
echo [%DATE% %TIME:~0,8%] Find FireFox...

reg query "HKLM\Software\Mozilla\Mozilla Firefox" >nul 2>&1
if %errorlevel% equ 0 (
    echo [%DATE% %TIME:~0,8%] Firefox found! Find Tlauncher cookies... >> "%log%"
    echo [%DATE% %TIME:~0,8%] Firefox found! Find Tlauncher cookies...

    for /D /R "%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles" %%D in ("*tlauncher*") do (
        if exist "%%D" (
            echo [%DATE% %TIME:~0,8%] Found! Deleting %%~nxD >> "%log%"
            echo [%DATE% %TIME:~0,8%] Found! Deleting %%~nxD
            rd /s /q "%%D"
        )
    )
    echo [%DATE% %TIME:~0,8%] Success delete "*tlauncher*" folder(s) >> "%log%"
    echo [%DATE% %TIME:~0,8%] Success delete "*tlauncher*" folder(s)

    echo [%DATE% %TIME:~0,8%] Searching for other files... >> "%log%"
    echo [%DATE% %TIME:~0,8%] Searching for other files...

    for /D /R "%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles" %%D in ("*tlmods*") do (
        if exist "%%D" (
            echo [%DATE% %TIME:~0,8%] Found! Deleting: %%~nxD >> "%log%"
            echo [%DATE% %TIME:~0,8%] Found! Deleting: %%~nxD
            rd /s /q "%%D"
        )
    )
    echo [%DATE% %TIME:~0,8%] Success delete "*tlmods*" folder(s) >> "%log%"
    echo [%DATE% %TIME:~0,8%] Success delete "*tlmods*" folder(s)

) else (
    echo [%DATE% %TIME:~0,8%] Firefox not found >> "%log%"
    echo [%DATE% %TIME:~0,8%] Firefox not found
)

goto success




:stop01

echo.
echo An error was detected and the program has been suspended. File hasn't deleted. >> "%log%"
echo An error was detected and the program has been suspended. File hasn't deleted.
goto open-log




:success

echo [%DATE% %TIME:~0,8%] Deletion finished. >> "%log%"
echo Deletion has been completed successfully! / Удаление завершено!
echo.
powershell -Command "Write-Host 'GITHUB: ' -NoNewline -ForegroundColor DarkYellow; Write-Host 'https://github.com/kwasss0k-77' -ForegroundColor White"
echo.




:open-log

echo.
echo Open log? (y/n)
set /p "choice88=  "
if %choice88% == y (
	start %log%
	exit
) else (
	pause
	exit
)