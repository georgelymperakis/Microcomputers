EXIT MACRO
    MOV AX,4C00H
    INT 21H
ENDM


READ MACRO 
    MOV AH,8
    INT 21H 

ENDM


PRINT MACRO CHAR
	PUSH AX
    PUSH DX
    MOV DL,CHAR
    MOV AH,2
    INT 21H 
    POP DX
	POP AX
ENDM

PRINT_STR MACRO STRING
    MOV DX,OFFSET STRING
    MOV AH,9
    INT 21H
ENDM

PRINT_LN MACRO 
    MOV DL,13
    MOV AH,2
    INT 21H
    MOV DL,10
    MOV AH,2
    INT 21H 
ENDM

PRINT_TAB MACRO
	PUSH AX
	PUSH DX
	MOV DL,9
	MOV	AH,2
	INT	21H
	POP DX
	POP AX
ENDM

MPRINT_DEC MACRO
    PUSH DX
    PUSH AX
    ADD DL,30H
    MOV AH,2
    INT 21H
    POP DX
    POP AX
ENDM

