@echo off
title TIMIWAY Smart - Web Launcher
echo ==========================================
echo   TIMIWAY Smart - Launching Full Suite
echo ==========================================
echo.

:: Check for Node.js
where node >nul 2>1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed! Please install it to run the AI features.
    pause
    exit
)

:: Check for node_modules
if not exist "backend\node_modules\" (
    echo [IMPORTANT] Dependencies are missing. Installing now...
    cd backend && npm install && cd ..
    echo [DONE] Dependencies installed.
)

:: Start Backend in a new window
echo 1. Starting Backend Server (Port 3005)...
start "TIMIWAY Backend" cmd /k "cd /d backend && node server.js"

:: Wait a moment for server to warm up
timeout /t 3 /nobreak >nul

:: Open Frontend via Server
echo 2. Opening TIMIWAY Web Platform (Localhost)...
start "" "http://localhost:3005"

echo.
echo ==========================================
echo   System is LIVE! Assistant is ONLINE.
echo ==========================================
echo.
pause
