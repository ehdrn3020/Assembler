MAIN  	SEGMENT
       	ASSUME  CS:MAIN

L1:   	MOV     AH, 1
		INT     21H

		CMP     AL, 1BH
		JE      FIN

		CMP     AL, 'A'
		JB      L2

		CMP     AL, 'Z'
		JA      L2
		SUB     AL, 'A'-'a' ;AL=AL+20H

L2:  	MOV     DL, AL
		MOV     AH, 2
		INT     21H

		JMP     L1

FIN:  	MOV     AH, 4CH
		INT     21H

MAIN  	ENDS
        END