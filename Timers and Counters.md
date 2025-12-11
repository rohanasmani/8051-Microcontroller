## Sample Program
### Code
``` Assembly
org 0000h
mov tmod, #10h;
repeat: mov tl1, #33h;
mov th1, #0feh;
setb tr1;
wait: jnb tf1, wait;
clr tr1;
clr tf1;
cpl p2.0;
sjmp repeat;
end
```
### Output 
![image](https://github.com/user-attachments/assets/0faa21d4-b2ed-4f1f-bb75-90579e24b5d2)

## For double frequency
### Code
``` Assembly
org 0000h
mov tmod, #10h;
repeat: mov tl1, #01ah;
mov th1, #0ffh;
setb tr1;
wait: jnb tf1, wait;
clr tr1;
clr tf1;
cpl p2.0;
sjmp repeat;
end
```
### Output
![image](https://github.com/user-attachments/assets/52c0ec3b-736c-46dc-98a2-55cbb0322bd7)
