def es_par(x):
    return x % 2 == 0

def contar_pares(numeros):
    count = 0
    for x in numeros:
        count += int(es_par(x))
    return count

if __name__ == "__main__":
    print(contar_pares([1,2,3,4,5,6,7,8,9,10]))
    print(contar_pares([1,1,1,1]))
