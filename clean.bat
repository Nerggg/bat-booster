@echo off
setlocal enabledelayedexpansion

tasklist /fi "imagename eq nvim.exe" | find /i "nvim.exe" >nul
if %errorlevel%==0 (
    echo Neovim sedang aktif.
    set /p jawab="Apakah ingin mematikan Neovim? (y/n): "
    if /i "!jawab!"=="y" (
        taskkill /f /im nvim.exe
    ) else (
        echo Proses dibatalkan.
        exit /b
    )
)

cd /d C:\Windows\Temp
del /F /Q *.*
for /D %%d in (*) do @rd /S /Q "%%d"

cd /d C:\Windows\Prefetch
del /F /Q *.*
for /D %%d in (*) do @rd /S /Q "%%d"

cd /d C:\Users\ADMINI~1\AppData\Local\Temp
del /F /Q *.*
for /D %%d in (*) do @rd /S /Q "%%d"

cd /d %userprofile%\AppData\Local\Microsoft\Windows\Explorer
del iconcache_*.db
del thumbcache_*.db 

:: net.exe stop sysmain

:: timeout 150

cd "C:\Ea\bat booster"
clean2.bat

endlocal
