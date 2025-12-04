## Write a program to prove that 3CE7H+3B8DH = 7874
### Code
```Assembly
ORG 0000H
MOV A,#0E7H
ADDC A,#8DH
MOV 42H,A
MOV A,#3CH
ADDC A,#3BH
MOV 41H,A
END
```

## Prove that 9C+64=100 and AC=1,P=0
### Code
```Assembly
ORG 0000H
MOV A,#9CH
ADDC A,#64H
END
```

## Addition of 32-bit numbers
### Code
```Assembly
ORG 0000H
MOV A, #01H
ADDC A, #0EEH
MOV 53H, A
MOV A, #00H
ADDC A, #0EEH
MOV 52H, A
MOV A, #00H
ADDC A, #0EEH
MOV 51H, A
MOV A, #10H
ADDC A, #0FH
MOV 50H, A
END
```

## Subtraction of two 32 bit numbers
### Code
``` Assembly
ORG 0000H
MOV A, #01H
SUBB A, #0EEH
MOV 53H, A
MOV A, #00H
SUBB A, #0EEH
MOV 52H, A
MOV A, #00H
SUBB A, #0EEH
MOV 51H, A
MOV A, #10H
SUBB A, #0FH
MOV 50H, A
END
```

## Program for reversing the elements of an array
### Code
```Assembly
ORG 0000H
MOV R0, #50H
MOV R1, #74H
MOV R2, #10D
NEXT: MOV A, @R0
MOV @R1, A
INC R0
DEC R1
DJNZ R2, NEXT
END
```

## Program to count number of positive , negative and zero elements of an array
### Code
```Assembly
ORG 0000H
MOV R0, #30H
MOV R1, #10
MOV R2, #00H   ;Zero Counter
MOV R3, #00H   ;Positive Counter
MOV R4, #OOH   ;Negative Counter
NEXT: MOV A, @RO
CLR C
JZ ZERO
RLC A
JC NEG
INC R3
SJMP SKIP
NEG: INC R4
SJMP SKIP
ZERO:  INC R2
SKIP: INC R0
DJNZ R1,NEXT
END
```

## Program for some signed addtions 
### Code
``` Assembly
ORG 0000H
MOV A, #-01
ADD A, #27
MOV R0, A
MOV A, #100
ADD A, #50
MOV R1, A
MOV A, #45
ADD A, #75
MOV R2, A
MOV A, #-30
ADD A, #-50
MOV R3, A
MOV A, #-70
ADD A, #-70
MOV R4, A
END
```









