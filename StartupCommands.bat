@echo off

:: Download and install WinRAR
echo Downloading WinRAR...
powershell -Command "& { Invoke-WebRequest -Uri 'https://www.rarlab.com/rar/winrar-x64-700b3.exe' -OutFile 'C:\WinRARSetup.exe' }"
echo Installing WinRAR...
C:\WinRARSetup.exe /S
del C:\WinRARSetup.exe

:: Download and install Notepad++
echo Downloading Notepad++...
powershell -Command "& { Invoke-WebRequest -Uri 'https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.6/npp.8.6.Installer.x64.exe' -OutFile 'C:\nppInstaller.exe' }"
echo Installing Notepad++...
C:\nppInstaller.exe /S
del C:\nppInstaller.exe

:: Assume the VS Code installer is already in the specified folder or downloaded previously
echo Installing Visual Studio Code...
call C:\Users\WDAGUtilityAccount\Desktop\install\VSCodeInstall.cmd

echo Installation complete.
pause

