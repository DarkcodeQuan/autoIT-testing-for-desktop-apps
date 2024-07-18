#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

; Khởi động Paint
Run("mspaint.exe")

; Chờ Paint mở
WinWaitActive("Untitled - Paint", "", 10)

; Chọn công cụ Rectangle từ thanh công cụ
Send("!h")  ; Alt + H để mở Home tab
Sleep(500)
Send("sh")  ; Sử dụng tổ hợp phím để chọn công cụ Shape -> Rectangle
Sleep(500)

; Vẽ một hình chữ nhật
MouseClickDrag("left", 300, 200, 500, 400, 10)  ; Điều chỉnh tọa độ cho phù hợp với kích thước màn hình của bạn
Sleep(1000)

; Mở hộp thoại Save As
Send("^s")

; Chờ hộp thoại Save As xuất hiện
WinWaitActive("Save As", "", 10)

; Nhập tên tệp vào ô tên tệp
ControlSetText("Save As", "", "Edit1", "testimage.png")

; Nhấp vào nút Save
ControlClick("Save As", "", "Button1")

; Kiểm tra nếu hộp thoại xác nhận ghi đè xuất hiện
If WinWaitActive("Confirm Save As", "", 2) Then
    ; Nhấp Yes để ghi đè tệp
    ControlClick("Confirm Save As", "", "Button1")
EndIf

; Đóng Paint
WinClose("Untitled - Paint")

; Kiểm tra nếu hộp thoại xác nhận xuất hiện
If WinWaitActive("Paint", "Do you want to save changes", 2) Then
    ; Nhấp vào nút Don't Save
    ControlClick("Paint", "", "Button2")
EndIf
