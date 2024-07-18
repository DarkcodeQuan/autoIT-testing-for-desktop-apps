#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Run("notepad.exe")

WinWaitActive("Untitled - Notepad")

Send("This is some text.")

Sleep(1000)

Send("^w")

Send("n")
