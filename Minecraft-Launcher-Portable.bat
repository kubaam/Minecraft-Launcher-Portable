@echo off
title Portable MC Launcher by Ambry
cls

:: Set default color to green for most text
color 0a

:: Display header with a red title line
echo =====================================================
color 0c
echo          Portable MC Launcher by Ambry
color 0a
echo =====================================================
echo.
echo Welcome! This launcher runs Minecraft portably.
echo.

:: Create required directories if they don't exist
if not exist "%CD%\GameData\AppData\.minecraft" (
    echo [INFO] Creating directory: %CD%\GameData\AppData\.minecraft
    mkdir "%CD%\GameData\AppData\.minecraft"
) else (
    echo [INFO] Directory exists: %CD%\GameData\AppData\.minecraft
)
if not exist "%CD%\GameData\Minecraft" (
    echo [INFO] Creating directory: %CD%\GameData\Minecraft
    mkdir "%CD%\GameData\Minecraft"
) else (
    echo [INFO] Directory exists: %CD%\GameData\Minecraft
)
echo.

:: Check if Minecraft.exe exists
if not exist "%CD%\GameData\Minecraft\Minecraft.exe" (
    echo [WARNING] Minecraft launcher not found.
    choice /M "Download the Minecraft launcher?"
    if errorlevel 2 (
        echo [CANCELLED] Download cancelled by user.
        goto end
    )
    
    :: Check if PowerShell is available
    where powershell >nul 2>&1
    if errorlevel 1 (
        echo [ERROR] PowerShell is not available on this system.
        echo Please install PowerShell to proceed with the download.
        pause
        goto end
    )
    
    echo [ACTION] Downloading Minecraft launcher...
    timeout /t 3 /nobreak >nul
    powershell -Command "Import-Module BitsTransfer; Start-BitsTransfer 'https://launcher.mojang.com/download/Minecraft.exe' '%CD%\GameData\Minecraft\Minecraft.exe'"
    
    if exist "%CD%\GameData\Minecraft\Minecraft.exe" (
        echo [SUCCESS] Download complete.
    ) else (
        echo [ERROR] Download failed.
        pause
        goto end
    )
) else (
    echo [INFO] Minecraft launcher already exists.
)
echo.

:: Prompt before launching Minecraft
choice /M "Launch Minecraft now?"
if errorlevel 2 (
    echo [CANCELLED] Launch cancelled by user.
    goto end
)

echo [ACTION] Launching Minecraft...
timeout /t 3 /nobreak >nul
start "Minecraft" "%CD%\GameData\Minecraft\Minecraft.exe" --workDir "%CD%\GameData\AppData\.minecraft"

:end
echo.
echo Thank you for using Portable MC Launcher by Ambry.
pause
