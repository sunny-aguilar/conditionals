TITLE Program Template     (template.asm)

; Author:
; Last Modified:
; OSU email address: 
; Course number/section:
; Assignment Number:                 Due Date:
; Description:

INCLUDE Irvine32.inc


.data
myQuote			BYTE	"Testing conditional statements", 0
lastJump		BYTE	"Last jump", 0
infinity		BYTE	"INFINITE LOOP!", 0
message			BYTE	"String in sub procedure", 0
myNum1			DWORD	10
myNum2			DWORD	20

.code
main PROC
	mov		edx, OFFSET myQuote
	call	WriteString
	call	CrLf



;looping example
	mov		ax, 0
	mov		ecx, 5

L1:
	call	WriteDec
	call	CrLf
	inc		ax
	loop	L1


;simple function call test
call sample


	exit; exit to operating system
main ENDP


;------------------------------------------------
; sample
;
; Adds two values
;
; Returns: none
;------------------------------------------------
sample PROC
	mov		edx, OFFSET message
	call	WriteString
	call	CrLf
	ret
sample ENDP

END main
