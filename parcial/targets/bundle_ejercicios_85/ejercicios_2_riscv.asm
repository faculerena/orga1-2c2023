.text:

main:
    la a0, src #pseudo
    la a1, dst #pseudo
    lw a2, longitud 
loop: 
    blez a2, imprimir  #pseudo          # si a2 es menor o igual a 0, salta a exit  
    lw t0, 0(a0)                        # cargo el valor de src en t0 
    lw t1, 0(a1)                        # y el valor de dst en t1
    or t2, t0, t1                       # hago el or entre t0 y t1 y lo guardo en t2
    sw t2, 0(a1)                        # guardo el valor de t2 en dst
    addi a0, a0, 4                      # incremento los punteros
    addi a1, a1, 4
    addi a2, a2, -1                     # -1 a la longitud para que termine el loop
    j loop  #pseudo                     # salto a loop

imprimir:
    la t2, dst
    # Cantidad de datos.
    li t3, 12
loop_imprimir:
    beqz t3, exit
    addi t3, t3, -1
    lw t4, 0(t2)
    # Imprime el resultado
    mv a0, t4
    li a7, 34
    ecall
    addi t2, t2, 4

    j loop_imprimir
exit:
    # Termina el programa.
    li a0, 0
    li a7, 93
    ecall

.data:
src:
.word 0xffffffff, 0x95555555, 0xf4444444, 0xf1111111
.word 0xffffff00, 0xf5005555, 0x95444444, 0xf1113311
.word 0xff00ffff, 0xf5550055, 0xa4444433, 0xa1551111      
dst:
.word 0xf5005555, 0x95444444, 0xf1113311, 0xffffff00
.word 0xf1111111, 0xffffffff, 0x95555555, 0xf4444444
.word 0xa1551111, 0xff00ffff, 0xf5550055, 0xa4444433
longitud:
.word 12

