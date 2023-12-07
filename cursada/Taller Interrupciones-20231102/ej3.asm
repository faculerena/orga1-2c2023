		SET R1, 0x03    ; guardo un 3
		SET R2, 0x00    ; guardo un 0
		SET R3, rai     ; guardo un 12 (?)
		STR [0x00], R3  ; guardo el 12 en lo q apunta 0x00 -> setear la direccón de RAI
		STI             ; me pueden interrumpir

loop:   CMP R1, R2      ; las flags de R1 - R2
		JZ fin          ; si Z -> fin      ---> necesito 3 interrupciones para que esto sea 0 e ir a 'fin'
		JMP loop        ; si no -> loop

fin: 	CLI             ; no me interrumpas

halt:   JMP halt        ; halt

rai:    DEC R1          ; por cada interrupción que reciba, resto 1 a R1 
		IRET            ; vuelvo