TITLE Program Template     (template.asm)

; Author:					Sandro Aguilar
; Last Modified:			July 7, 2019
; OSU email address:		aguilasa@oregon
; Course number/section:
; Assignment Number:
; Due Date:					N/A
; Description:

INCLUDE Irvine32.inc


.data
dontPrint		BYTE	"This should not print. . .", 0
testString_1	BYTE	"first string", 0
testString_2	BYTE	"secon dstring", 0
eaxVal			DWORD	?
edxVal			DWORD	?


.code
main PROC
	mov	eax, 123
	mov	ebx, 13
	mov edx, 0
	div	ebx
	mov eaxVal, eax

	call	WriteDec



	exit								;exit to operating system
main ENDP


END main
