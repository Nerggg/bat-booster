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