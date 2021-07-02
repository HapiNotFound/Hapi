Set WshShell = CreateObject("WScript.Shell")
WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8"

'To clear browsing cookies
WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2"

'To Clear Browsing History
WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1"

WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16"

WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32"

WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255"

WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 128"

WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2048"

WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4"

WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4096"

WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351"


WshShell.run "%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:11"

WshShell.run "%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:112"


WshShell.run "%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:113"


WshShell.run "%systemroot%\system32\cmd.exe /c CLEANMGR /sagerun:114"



Set WSHShell = CreateObject("WScript.Shell")
WshShell.SendKeys "{F5}"


