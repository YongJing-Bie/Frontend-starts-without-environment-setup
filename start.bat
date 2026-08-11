@echo off
chcp 65001 >nul
set PORT=12138

:check
netstat -ano | findstr :%PORT% >nul
if %errorlevel%==0 set /a PORT+=1 & goto check

REM 1. 切换到 dist 目录（脚本所在目录下的 dist 子文件夹）
cd /d "%~dp0dist"

REM 2. 启动上一级目录的 websitino.exe（因为现在在 dist 里，所以用 ..\）
start /min ..\websitino.exe --index --port %PORT%

timeout /t 1 /nobreak >nul
start http://localhost:%PORT%
echo 服务器已启动，访问 http://localhost:%PORT%