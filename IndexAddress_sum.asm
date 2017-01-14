MAIN   SEGMENT 
       ASSUME CS:MAIN,DS:MAIN
       MOV AX,CS
       MOV DS,AX

       MOV CX,0
LOOP1: MOV DI,CX
       MOV AL,0
       MOV AL,DATA1[DI]
       ADD AL,DATA2[DI]
       MOV DATA3[DI],AL
       INC CX
       CMP CX,10
       JBE LOOP1

       MOV AH,4CH
       INT 21H

DATA1  DB 1,2,3,4,5,6,7,8,9,10
DATA2  DB 11,12,13,14,15,16,17,18,19,20
DATA3  DB 10 DUP(0)
MAIN   ENDS
       END