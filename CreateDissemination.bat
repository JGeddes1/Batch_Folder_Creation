@echo off
setlocal

REM Get the current directory path
set "currentDir=%cd%"


REM Get the parent folder name
for %%A in ("%currentDir%") do set "parentFolder=%%~nxA"

REM Create the dissemination folder
mkdir "%currentDir%\%parentFolder%\dissemination"

REM Copy the documentation folder from preservation
xcopy "%currentDir%\preservation\documentation" "%currentDir%\%parentFolder%\dissemination\documentation" /e /i

REM Check if there are JPG files in the original folder
set "jpgFound=false"
for /r "%currentDir%\original" %%F in (*.jpg *.pdf) do (
    REM Copy JPG files to dissemination folder
    xcopy "%%F" "z"
    set "jpgFound=true"
)
if "%jpgFound%"=="true" (
    echo JPG files copied successfully.
) else (
    echo No JPG files found in the original folder.
)

echo Folders created successfully.
pause