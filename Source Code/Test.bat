@Echo off
setlocal EnableDelayedExpansion
cls

Title mCopy - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a

Echo.
Echo Drag and drop a File to Copy: (Bigger than 50 MBs)
ECHO **AVOID SPECIAL CHARACTERS IN PATH/NAME OF FILE.**
Set /p "_Source=>"
Set _Source=%_Source:"=%
Echo.
REM Fetching Filename from the Source...
For /f "tokens=*" %%A in ("%_Source%") do (Set "_Filename=%%~nxA")
Echo.
mCopy "!_Source!" "!cd!\!_Filename!"
Echo.Rename the File and Give it the desired File-Extension...
Echo.
pause
exit