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
infinity		BYTE	"INFINITE LOOP!", 0
message			BYTE	"String in sub procedure", 0
array			DWORD	1, 2, 3, 4, 5
theSum			DWORD	?
filename		BYTE	"newfile.txt", 0
startTime		DWORD	?
totalTime		BYTE	"total time: ", 0

.code
main PROC
	mov		esi, OFFSET array
	mov		ecx, LENGTHOF array
	call	arraySum
	mov		theSum, eax
	call	WriteDec
	call	CrLf


;looping example
	mov		ax, 0
	mov		ecx, 5

L1:
	call	WriteDec
	call	CrLf
	inc		ax
	loop	L1

call	WaitMsg				;pause program
;call	Clrscr				;clear the screen
;call	MsgBoxAsk			;popup box

call	GetMseconds
mov		startTime, eax

mov	edx, OFFSET filename
call	CreateOutputFile
call	CrLf

call	edx, OFFSET totalTime
call	
call	GetMseconds
sub		eax, startTime
call	WriteDec
call	CrLf


	exit; exit to operating system
main ENDP


;------------------------------------------------
; arraySum
;
; Adds array values to a sum
;
; Returns: none
;------------------------------------------------
arraySum PROC
	push	esi
	push	ecx
	mov		eax, 0

L1:
	add		eax, [esi]
	add		esi, TYPE DWORD
	loop	L1
	pop		ecx
	pop		esi
	ret
arraySum ENDP

END main
