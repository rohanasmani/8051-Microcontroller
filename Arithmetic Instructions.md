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

### Subtraction of two 32 bit numbers
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





