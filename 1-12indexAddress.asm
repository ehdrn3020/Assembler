MAIN SEGMENT 
     ASSUME CS:MAIN,DS:MAIN
     MOV AX,CS
     MOV DS,AX

       MOV CX,0
LOOP1: MOV DI,CX
       MOV AL,DATA[DI]
       ADD DL,AL
       INC CX
       CMP CX,11
       JBE LOOP1
       
       MOV AH,4CH
       INT 21H

DATA DB 1
     DB 2
     DB 3
     DB 4
     DB 5
     DB 6
     DB 7
     DB 8
     DB 9
     DB 10
     DB 11
     DB 12

MAIN ENDS
     END