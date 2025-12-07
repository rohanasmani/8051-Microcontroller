## Parity of a 16 Bit number
### Code
```Assembly
ORG 0000H 
// 16 BIT NUMBER: F1F0H
MOV R0, #0F0H	// Lower Bit
MOV R1, #0F1H	// Higher Bit
MOV R2, #8
MOV R3, #00H  // Number of 1s
MOV R4, #00H	// Number of 0s
LOWER: MOV A, R0
CLR C
RLC A
JC PLUS
SJMP SKIP
PLUS: INC R3
SJMP SKIP
SKIP: MOV R0, A
DJNZ R2, LOWER
MOV R2, #8
HIGHER: MOV A, R1
CLR C
RLC A
JC INCREASE
SJMP SKIPTHIS
INCREASE: INC R3
SJMP SKIPTHIS
SKIPTHIS: MOV R1, A
DJNZ R2, HIGHER
MOV A, #10H
CLR C
SUBB A, R3
MOV R4, A
END
```
## To transfer the LSB Of 4 memory locations starting from 0f00H in the code memory in lower nibble of R0. Mask of the upper nibble of R0 by ones.
### Code

