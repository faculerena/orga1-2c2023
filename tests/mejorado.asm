            JMP guarda
loop:       MOV R2, [R0]
            MOV R3, [R0+0x0FE0]
guarda:     CMP R0, R1
            JNE loop
            MOV R0, [R0+0x0001]
    