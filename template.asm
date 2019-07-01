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
	mov		eax, 5
	add		eax, 4
	call	WriteDec
	call	CrLf

	exit							; exit to operating system
main ENDP


END main
