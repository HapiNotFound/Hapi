Set WshShell = WScript.CreateObject("WScript.Shell")

WshShell.Run "Delinterjunk.vbs"
WshShell.Run "Cleaner"
WScript.sleep 4000

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8"

'To clear browsing cookies
WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2"

'To Clear Browsing History
WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1"

'Option Explicit
'On Error Resume Next
    Const RECYCLE_BIN = &Ha&
    Const FILE_SIZE = 3
    Dim objShell, objFolder, objFSO, colItems
    Set objShell = CreateObject("Shell.Application")
    Set objFolder = objShell.Namespace(RECYCLE_BIN)
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set colItems = objFolder.Items
    For Each objItem in colItems
        If (objItem.Type = "File folder") Then
            objFSO.DeleteFolder(objItem.Path)

        Else
            objFSO.DeleteFile(objItem.Path)
        End If
    Next
Set WshShell = CreateObject("WScript.Shell")
WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8"

'To clear browsing cookies
WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2"

'To Clear Browsing History
WshShell.run "RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1"


'' Calls shell function to clear the hibernate file
Public Sub Clear_hiberfil()
set objWSH = CreateObject("WScript.Shell")
objWSH.run "powercfg.exe /hibernate off"
end Sub
'' Function to go sleep in case you need it
Sub GoToSleep (iMinutes)
Dim Starting, Ending, t
Starting = Now
Ending = DateAdd("n",iMinutes,Starting)
Do
t = DateDiff("n",Now,Ending)
If t <= 0 Then Exit Do
WScript.Sleep 10000
Loop
End Sub




Public Sub Clean_Chrome ()
strUserTemp=userProfile & "\Appdata\Local\Google\Chrome\User Data\Default\Cache"
' Get user profile root folder
set objWSH = CreateObject("WScript.Shell")
sWindows = objWSH.ExpandEnvironmentStrings("%WINDIR%")
sSysDrive = objWSH.ExpandEnvironmentStrings("%SYSTEMDRIVE%")
sProfileRoot = ReadReg("HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList\ProfilesDirectory")
'output.writeline "Raw Registry Read Result: " & sProfileRoot
sProfileRoot = Replace (LCase(sProfileRoot), "%systemdrive%", sSysDrive)
'output.writeline "After Variable Replacement: " & sProfileRoot
set objWSH=nothing
set objProfileFolder=objFSO.GetFolder(sProfileRoot)
for each objFolder in objProfileFolder.SubFolders
''output.writeline "Processing profile: " & sProfileRoot & "\" & objFolder.Name & strUserTemp
sProfile=sProfileRoot & "\" & objFolder.Name
DeleteFolderContents sProfile & strUserTemp
next
End Sub


Sub DoCleanup()
Dim WshShell
Set WshShell=CreateObject("WScript.Shell")
WshShell.Run "C:\WINDOWS\SYSTEM32\cleanmgr /sagerun:1"
End Sub

Sub SetRegKeys
Dim strKeyPath
Dim strComputer
Dim objReg
Dim arrSubKeys
Dim SubKey
Dim strValueName
Const HKLM=&H80000002


strKeyPath="SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches"
strComputer="."
strValueName="StateFlags0001"

Set objReg=GetObject("winmgmts:\\" & strComputer & "\root\default:StdRegProv")
objReg.Enumkey HKLM ,strKeyPath,arrSubKeys

For Each SubKey In arrSubKeys

objReg.SetDWORDValue HKLM,strKeyPath & "\" & SubKey,strValueName,2

Next

End Sub
Set WSHShell = CreateObject("WScript.Shell")
WshShell.SendKeys "{F5}"



