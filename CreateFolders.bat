@echo off
setlocal enabledelayedexpansion

REM Check if a location is provided
if "%~1"=="" (
    echo Usage: %0 "path_to_location"
    exit /b 1
)

REM Create folders
set "location=%~1"
mkdir "%location%\Images"
mkdir "%location%\Images\thumbs"
mkdir "%location%\Images\preview"

echo Folders created successfully in %location%