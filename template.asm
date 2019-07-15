TITLE Program Template     (template.asm)

; Author:					Sandro Aguilar
; Last Modified:			July 7, 2019
; OSU email address:		aguilasa@oregonstate.edu
; Course number/section:	not applicabl
; Assignment Number:		
; Due Date:					N/A
; Description:

INCLUDE Irvine32.inc


.data
val1	WORD	2000h
val2	WORD	0100h

.code
main PROC
	mov	eax, 10
	mul	eax, 10





	exit								;exit to operating system
main ENDP


END main
