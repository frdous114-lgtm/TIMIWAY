@echo off
echo ==================================================
echo    Starting TIMIWAY Smart Platform (Local Server)
echo ==================================================
echo.
cd backend
echo Starting Node.js server...
echo Please wait a second, your browser will open automatically.
echo.

:: Open the browser automatically
start http://localhost:3005

:: Run the server
node server.js
pause
