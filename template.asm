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
startTime		DWORD	?
endTime			DWORD	?

.code
main PROC
	call	GetMseconds					;record start time
	mov		startTime, eax				;save start time stored in eax

	mov		eax, 1000
	add		eax, 2000
	call	WriteDec

	call	GetMseconds					;start record time
	sub		eax, startTime				;subtract startTime from endTime
	mov		endTime, eax




	exit								;exit to operating system
main ENDP


END main
