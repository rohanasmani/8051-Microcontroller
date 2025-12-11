## Write a delay routine of 0.5ms, which is called 100 times which in turn is called 20 times.
### Code
``` Assembly
org 0000h 
ljmp 0300h
org 000bh 
inc r0 
clr tr0
mov tl0,#0ch 
mov th0,#0feh 
clr tf0
setb tr0
reti
org 0300h
mov r0,#00h 
mov tl0,#0ch 
mov th0,#0feh 
mov tmod,#01h 
mov ie,#82h 
setb tr0 
here1:mov r1,#100
here: cjne r0,#20,here  
mov r0,#00h 
djnz r1,here
cpl p1.0 
sjmp here1 
end
```
![image](https://github.com/user-attachments/assets/5e4c16c6-a9a5-4300-aad8-5a75b54f9c68)
## Every time you push the button the accumulator is incremented by one and the content is transferred to an external memory location
### Code
``` Assembly
ORG 0000H        
LJMP MAIN
ORG 0003H        
INC A
MOVX @DPTR, A
RETI
ORG 0100H
MAIN:
CLR A
MOV IE, #81H     
MOV DPTR, #300H    
SETB TCON.0
HERE: SJMP HERE
END
```


