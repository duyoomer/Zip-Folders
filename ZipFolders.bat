@echo off
setlocal enabledelayedexpansion
 
rem Use UTF-8 encoding page
chcp 65001 >nul
 
echo ***** WARNING *****
echo.
echo This batch file compresses folders in the working directory.
echo Existing ZIP files are skipped and all operations are logged in the "zip_folders_log.txt" file.
echo.
pause
 
rem Create or reset the log file
set "logFile=zip_folders_log.txt"
echo Compression process is starting... > "%logFile%"
 
rem Specify the path where 7-Zip is installed
set "zipPath=Z:\7-ZipPortable\App\7-Zip\7z.exe"
 
rem Compress the folders in the working directory
set "skipList="
for /d %%a in (*) do (
    if exist "%%a" (
        if exist "%%a.zip" (
            echo "%%a.zip exists, compression skipped." >> "%logFile%"
            set "skipList=!skipList! %%a"
        ) else (
            "%zipPath%" a -tzip "%%a.zip" "%%a\*" > nul
            if errorlevel 1 (
                echo "Error: %%a.zip could not be created." >> "%logFile%"
                set "skipList=!skipList! %%a"
            ) else (
                echo "%%a.zip created." >> "%logFile%"
            )
        )
    ) else (
        echo "Error: %%a folder not found." >> "%logFile%"
        set "skipList=!skipList! %%a"
    )
)
 
rem Write the skipped folders to the top of the log file
(
    echo Skipped folders: !skipList!
    type "%logFile%"
) > "%logFile%.tmp" && move /y "%logFile%.tmp" "%logFile%"
 
echo Compression process completed. >> "%logFile%"
endlocal
