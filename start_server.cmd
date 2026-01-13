@echo off
echo Starting Local Server...
echo.
echo NOTE: Google Login requires the page to be served over HTTP/HTTPS (not file://).
echo We will try to start a server at http://localhost:8000
echo.

python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Python found. Starting server...
    python -m http.server 8000
) else (
    echo Python not found. Trying npx http-server...
    call npx http-server -p 8000
)

pause
