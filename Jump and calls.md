## Sample Program Code
``` Assembly
mov r1,#00h
mov dptr,#0000h
movx a,@dptr
mov r0,a         ;r0=04h
again: inc dptr
movx a,@dptr
mov r7,a         ;r7=13h
lcall checkbcd   ;SP,PC
jnb 00h,next
inc r1
next: djnz r0,again
inc dptr
mov a,r1
movx @dptr,a
same: sjmp same
checkbcd: clr 00h
mov a,r7
anl a,#0fh       ;a=03h
cjne a,#09h,lowhigh
sjmp limit
lowhigh: jnc back
limit: mov a,r7
anl a,#0f0h
swap a
cjne a,#09h,final
setone: setb 00h
Back: ret
Final: jnc back
sjmp setone
end
```

### Sample program using JC instruction
```Assembly
mov r1,#00h
mov dptr,#0000h
movx a,@dptr
mov r0,a            ;r0=04h
again: inc dptr
movx a,@dptr
mov r7,a            ;r7=13h
lcall checkbcd      ;SP,PC
jnb 00h,next
inc r1
next: djnz r0,again
inc dptr
mov a,r1
movx @dptr,a
same: sjmp same
checkbcd: clr 00h
mov a,r7
anl a,#0fh          ;a=03h
cjne a,#09h,lowhigh
sjmp limit
limit: mov a,r7
anl a,#0f0h
swap a
cjne a,#09h,final
sjmp setone
setone: setb 00h
clr c
lowhigh: jc limit
Back: ret
Final: jc setone
sjmp back
end
```

### Same program using JB instructions
```Assembly
mov r1,#00h
mov dptr ,#0000h
movx a,@dptr
mov r0,a         ;r0=04h
again: inc dptr
movx a,@dptr
mov r7,a         ;r7=13h
lcall checkbcd   ;SP,PC
jb 00h,next
inc r1
next: djnz r0,again
inc dptr
mov a,r1
movx @dptr,a
same: sjmp same
checkbcd: setb 00h
mov a,r7
anl a,#0fh       ;a=03h
cjne a,#09h,lowhigh
sjmp limit
lowhigh: jnc back
limit: mov a,r7
anl a,#0f0h
swap a
cjne a,#09h,final
clearone: clr 00h
back: ret
final: jnc back
sjmp clearone
end
```



