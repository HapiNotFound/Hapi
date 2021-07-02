@echo off

:1
cls
echo Cleaning system junk files, please wait . . .
echo.
color c
rd %temp% /s /q
cd C:\Users\Shad\AppData\Local\Temp
del /f /s /q %userprofile%\*.chk
del /f /s /q %userprofile%\*.old
del /f /s /q %userprofile%\recycled\*.*
del /f /q %userprofile%\cookies\*.*
del /f /s /q “%userprofile%\Local Settings\Temporary Internet Files\*.*
del /f /s /q %userprofile%\*.tmp*
del /f /q %userprofile%\*.dmp*
del /f /q %userprofile%\*.db*
ie4uinit.exe -show
ie4uinit.exe -show
del /f /q %userprofile%\*.lst*
del /f /q %userprofile%\*.lock*
del /f /q %userprofile%\*.class*
ie4uinit.exe -show
del /f /q %userprofile%\*.classfile*
del /f /q %userprofile%\*.bin*
del /f /q %userprofile%\*.file*
DEL C:\Users\%username%\AppData\Local\Temp\*.* /S /Q
color 6
rd %temp% /s /q
cd C:\Users\Shad\AppData\Local\Temp
del *.tmp*
del *.txt*
color 3
del *.lock
del *.file*
del *.ses*
del *.cpuprofilefile*
del *.dat*
del /f /q *.*
timeout /t 8 >null
color 9
rd %temp% /s /q
del /f /q %userprofile%\*.sys*
ping localhost -n 5 >nul
%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:64
%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:11
%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:112
%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:113
%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:114
%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:115
ie4uinit.exe -ClearIconCache
rundll32 user32.dll,UpdatePerUserSystemParameters 
setlocal EnableExtensions DisableDelayedExpansion
ie4uinit.exe -show
ie4uinit.exe -show
ie4uinit.exe -show
ie4uinit.exe -show
endlocal
rd %temp% /s /q
cleanmgr.exe /AUTOCLEAN
cleanmgr.exe /VERYLOWDISK
del /q /f /s %temp%\*
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
ipconfig /flushdns

rundll32.exe cmdext.dll,MessageBeepStub
rundll32.exe cmdext.dll,MessageBeepStub
rundll32.exe cmdext.dll,MessageBeepStub

shutdown /c "All Junk File Are CLeaned" /s

timeout /t 6 >nul
cls
echo.
echo Junk files clean is finished!
timeout /t 3 >nul
cls
goto :menu



