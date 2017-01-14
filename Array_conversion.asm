MAIN   SEGMENT 
       ASSUME CS:MAIN,DS:MAIN
       MOV AX,CS
       MOV DS,AX

       MOV SI,0
       LEA BX,DATA1
       MOV DI,18   
  
       CALL M_ADD
       
       MOV AH,4CH
       INT 21H

M_ADD  PROC
PUSHA            
LOOP1: MOV AX,[BX+SI]
       MOV BX[DI+20],AX
       ADD SI,2
       SUB DI,2
       CMP SI,20
       JBE LOOP1
POPA            
       RET
M_ADD ENDP

DATA1  DW 1,2,3,4,5,6,7,8,9,10
DATA2  DW 10 DUP(0)
MAIN   ENDS
       END