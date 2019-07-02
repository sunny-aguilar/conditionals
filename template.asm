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
firstString		BYTE	"Jumped to first label", 0
secondString	BYTE	"Jumped to second label", 0
thirdString		BYTE	"Jumped to third label", 0
lastJump		BYTE	"Last jump", 0
myNum1			BYTE	10
myNum2			BYTE	20

.code
main PROC
	mov		edx, OFFSET myQuote
	call	WriteString
	call	CrLf

;first if statement
	mov		eax, 10
	cmp		ebx, 20
	jmp		thirdJump


firstJump:
	mov		edx, OFFSET firstString
	call	WriteString
	call	CrLf
	jmp		endJump


secondJump:
	mov		edx, OFFSET secondString
	call	WriteString
	call	CrLf
	jmp		firstJump


thirdJump:
	mov		edx, OFFSET thirdString
	call	WriteString
	call	CrLf
	jmp		secondJump
	

endJump:
	mov		edx, OFFSET lastJump
	call	WriteString
	call	CrLf


	mov		al, myNum1
	xchg	al, myNum2
	mov		myNum1, al

	exit							; exit to operating system
main ENDP


END main
