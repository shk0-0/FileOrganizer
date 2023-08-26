@echo off
setlocal

set "sourceDirectory=C:\Users\shkon\Downloads"
set "destinationDirectory=C:\Path\To\Destination"

:: Create destination subdirectories if they don't exist
for %%E in (docx pdf jpg mp4) do (
    if not exist "%destinationDirectory%\%%E" (
        mkdir "%destinationDirectory%\%%E"
    )
)

:: Move files to appropriate subdirectories
for %%F in ("%sourceDirectory%\*.*") do (
    for %%E in (docx pdf jpg mp4) do (
        if "%%~xF"==".%%E" move "%%F" "%destinationDirectory%\%%E"
    )
)

echo Files have been organized.
pause

endlocal
