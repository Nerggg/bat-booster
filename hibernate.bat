pause

start cmd /C build.bat
start cmd /C killbuild.bat
lock.lnk

cd /d C:\Windows\Temp
del /F /Q *.*
for /D %%d in (*) do @rd /S /Q "%%d"

cd /d C:\Windows\Prefetch
del /F /Q *.*
for /D %%d in (*) do @rd /S /Q "%%d"

cd /d C:\Users\ADMINI~1\AppData\Local\Temp
del /F /Q *.*
for /D %%d in (*) do @rd /S /Q "%%d"

timeout 7
shutdown /h