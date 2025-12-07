## Implement the following function using bit level instruction:- Y1 = ABC + ABC +ABC’ 
### Code
```Assembly
MOV A, 20H
MOV C, 00H
ANL C, 01H
ANL C, 02H
MOV 06H, C
MOV C, 03H
ANL C, 04H
ANL C, 05H
ORL C, 06H
MOV 06H, C
MOV A, 21H
MOV C, 08H
ANL C, 09H
ANL C, /0AH
ORL C, 06H
```
## Implement function function using bit level instruction. Y2 = AB’C + ABC’ +A’B’C’
### Code
````Assembly
MOV A, 20H
MOV C, 00H
ANL C, /01H
ANL C, 02H
MOV 06H, C
MOV C, 03H
MOV C, 04H
ANL C, /05H
ORL C, 06H
MOV 06H, C
MOV A, 21H
MOV C, 08H
CPL C
ANL C, /09H
ANL C, /0AH
ORL C, 06H
```

