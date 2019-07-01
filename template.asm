TITLE Program Template     (template.asm)

; Author:
; Last Modified:
; OSU email address: 
; Course number/section:
; Assignment Number:                 Due Date:
; Description:

INCLUDE Irvine32.inc


.data
myQuote		BYTE	"Testing conditional statements", 0

.code
main PROC
	mov		edx, OFFSET myQuote
	call	WriteString
	call	CrLf

;first if statement
	mov		eax, 10
	cmp		20
	jle

;a lable to jump to


;another label to jump to



	exit							; exit to operating system
main ENDP


END main
