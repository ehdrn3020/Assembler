MAIN SEGMENT
     ASSUME  CS:MAIN, DS:MAIN

       MOV AX,CS
       MOV DS,AX

       MOV CX,10
       MOV AX,0

LOOP1: ADD AX,CX
       DEC CX
       CMP CX,0
       JNE LOOP1  ;if not equal
            
       MOV SUM,AX

       MOV AH,4CH
       INT 21H

SUM    DW ?

MAIN   ENDS
       END