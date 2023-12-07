loop:       CMP R0, R1 
            JE endloop
            MOV R2, [R0]
            MOV R3, [R0+0x0FE0]
            JMP loop

endloop:    MOV R0, [R0+0x0001]
    