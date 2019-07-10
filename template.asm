TITLE Program Template     (template.asm)

; Author:					Sandro Aguilar
; Last Modified:			July 7, 2019
; OSU email address:		aguilasa@oregonstate.edu
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

x   DWORD  153461
y   BYTE   37
z   BYTE   90


.code
main PROC
	mov   AH, y
	mov   AL, z

	inc   EAX
	movzx   EBX, z
	xor EAX, EBX




	exit								;exit to operating system
main ENDP


END main
