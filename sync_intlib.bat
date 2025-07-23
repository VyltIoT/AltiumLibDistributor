@echo off
setlocal

REM === CONFIGURATION ===
set FILENAME=AltiumLibPackager.IntLib
set SOURCE_DIR=..\AltiumLibPackager\Project Outputs for AltiumLibPackager
set DEST_DIR=.

REM === Delete old file if it exists ===
if exist "%DEST_DIR%\%FILENAME%" (
    echo Deleting old %FILENAME%...
    del "%DEST_DIR%\%FILENAME%"
)

REM === Copy new file from source ===
if exist "%SOURCE_DIR%\%FILENAME%" (
    echo Copying %FILENAME% from %SOURCE_DIR%...
    copy "%SOURCE_DIR%\%FILENAME%" "%DEST_DIR%"
    echo ✅ Sync complete.
) else (
    echo ❌ Source file not found: %SOURCE_DIR%\%FILENAME%
)

endlocal
pause
