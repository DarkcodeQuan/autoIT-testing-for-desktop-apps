#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Run("notepad.exe")

WinWaitActive("Untitled - Notepad")

Send("AutoIt is a powerful scripting language!")

Sleep(1000)

Send("^s")

Sleep(1000)

Send("AutoItTest.txt")

Send("{ENTER}")

Send("^w")
