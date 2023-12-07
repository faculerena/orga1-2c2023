main:
    li a0, 1
    li a1, 2
    call son_pares
    li a7, 1
    ecall # Imprime el resultado.

    li a0, 8
    li a1, 42
    call son_pares
    li a7, 1
    ecall # Imprime el resultado.

exit:
    # Este ecall frena el simulador.
    # Consideramos que nuestro programa termina acá.
    li a7, 10
    ecall

son_pares:
    # a0 = x
    # a1 = y

    # Preservamos el return address para no perderlo cuando
    # llamamos a es_par.
    mv s0, ra

    # Movemos el argumento y a un saved register para tener
    # certeza que no se va a modificar.
    mv s1, a1

    # es_par(x)
    call es_par
    mv s2, a0 # Preservamos el resultado de es_par(x).

    # es_par(y)
    mv a0, s1
    call es_par

    # es_par(x) and es_par(y)
    and a0, a0, s2

    # Restauramos el return address para volver a main.
    mv ra, s0
    ret

es_par:
    # a0 = 12 = 1100
    # a0 & 1 = 1100 & 0001 = 0000
    # a0 ^ 1 = 0000 ^ 0001 = 0001

    # a0 = 13 = 1101
    # a0 & 1 = 1101 & 0001 = 0001
    # a0 ^ 1 = 0001 ^ 0001 = 0000

    andi a0, a0, 1
    xori a0, a0, 1
    ret
