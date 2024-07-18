#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Run("calc.exe")

WinWaitActive("[CLASS:CalcFrame]", "", 10)

Send("8+8{ENTER}")
Sleep(1000)

Send("^a")
Sleep(500) 
Send("^c")

Sleep(500)
$result = ClipGet()

If $result = "16" Then
    MsgBox(0, "Test Result", "Passed! Result is correct.")
Else
    MsgBox(0, "Test Result", "Failed! Expected 16 but got " & $result)
EndIf

Send("!{F4}")  ; Alt + F4 d? dóng Calculator
