org 0000h
 mov a, #10h     ; Load immediate value 10h into accumulator A
 mov r2, #10h    ; Load immediate value 10h into register R2
 mov r0, a       ; Copy contents of accumulator A into register R0
 mov r1, #30h    ; Load immediate value 30h into register R1
 mov a,r1       ; Copy contents of register R0 into register R1 (overwrites previous 30h)
 mov r2,a
 mov 10h, #0FFh  ; Store immediate value FFh into internal RAM location 10h
end
