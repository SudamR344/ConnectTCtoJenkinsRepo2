@echo off
setlocal enabledelayedexpansion

set FOLDER=C:\TestFolder
if not exist "%FOLDER%" mkdir "%FOLDER%"

set FILE_NAME=myfile_%date:~-4,4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%.txt
set FILE_NAME=%FILE_NAME: =0%

echo File created on %date% at %time% > "%FOLDER%\%FILE_NAME%"
echo File: %FOLDER%\%FILE_NAME%
pause
