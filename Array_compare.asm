MAIN SEGMENT
     ASSUME CS:MAIN, DS:MAIN
     MOV AX, CS
     MOV DS, AX

     LEA SI,T_A
     LEA DI,T_B
     MOV CX,0

L1:  CMP CX,10
     JAE QEXIT
     CALL P
     ADD COUNT,AX
     ADD SI,2
     ADD DI,2
     INC CX
     JMP L1

P    PROC
     MOV AX,[SI]
     CMP AX,[DI]
     JB  L2
     MOV AX,0
     JMP L3

L2:  MOV DX,[DI]
     MOV [DI],AX
     MOV [SI],DX
     MOV AX,1
    
L3:  RET
  P  ENDP

QEXIT: MOV AH,4CH
       INT 21H

COUNT DW 0
T_A   DW 2,4,6,8,10,12,14,16,18,20
T_B   DW 5,5,5,5,5,15,15,15,20,20

MAIN ENDS
     END