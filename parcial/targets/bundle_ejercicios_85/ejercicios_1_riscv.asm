.text:
# Consideramos que el array empieza desde la posición 0.
# El array tiene longitud 12.
# El resultado es hacer `or` entre todos los elementos en posiciones impares.

main: 
    la a0, arr #pseudo                  # Dirección del array
    lw a1, longitud                     # Longitud del array
    li a2, 11 #pseudo                   # Posición inicial (empiezo en la 11, resto de a 2)
    li t4, 0  #pseudo                   # "Suma" de los elementos
    
loop:
    blez a2, exit  #pseudo              # Si a2 <= 0, salgo del loop
    slli t0, a2, 2                      # traigo el elemento a2 de la lista (a2 * 4)                      
    add t0, a0, t0                      # Dirección del elemento a2
    lw t0, 0(t0)  #pseudo               # Elemento a2
    or t4, t4, t0                       # Sumo el elemento a2 a la suma
    addi a2, a2, -2                     # a2 -= 2
    j loop     #pseudo JAL

exit:
    # Imprime la suma
    mv a0, t4
    li a7, 34
    ecall

    # Termina el programa.
    li a0, 0
    li a7, 93
    ecall

.data:
arr:
.word	0xffffffff, 0x95555555, 0xf4444444, 0xf1111111
.word	0xffffff00, 0xf5005555, 0x95444444, 0xf1113311
.word	0xff00ffff, 0xf5550055, 0xa4444433, 0xa1551111  

longitud:
    .word 12
