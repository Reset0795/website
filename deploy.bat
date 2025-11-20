@echo off
echo ====================================
echo Netlify 快速部署脚本
echo ====================================
echo.

REM 检查是否安装了 Node.js
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [错误] 未检测到 Node.js
    echo 请先安装 Node.js: https://nodejs.org/
    echo.
    pause
    exit /b 1
)

REM 检查是否安装了 Netlify CLI
where netlify >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [提示] 未检测到 Netlify CLI，正在安装...
    echo.
    call npm install -g netlify-cli
    if %ERRORLEVEL% NEQ 0 (
        echo [错误] Netlify CLI 安装失败
        pause
        exit /b 1
    )
    echo [成功] Netlify CLI 安装完成
    echo.
)

echo [提示] 开始部署到 Netlify...
echo.
call netlify deploy --prod

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ====================================
    echo [成功] 部署完成！
    echo ====================================
) else (
    echo.
    echo ====================================
    echo [错误] 部署失败
    echo ====================================
)

echo.
pause

