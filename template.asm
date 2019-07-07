TITLE Program Template     (template.asm)

; Author:
; Last Modified:
; OSU email address: 
; Course number/section:
; Assignment Number:                 Due Date:
; Description:

INCLUDE Irvine32.inc


.data
dontPrint		BYTE	"This should not print. . .", 0
testString_1	BYTE	"first string", 0
testString_2	BYTE	"secon dstring", 0

.code
main PROC
	mov	eax, 0
	mov	ebx, 0
	push 5
	push 10
	pop ebx
	pop eax
	call	WriteDec



	exit								;exit to operating system
main ENDP


END main
