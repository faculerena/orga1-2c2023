def es_par(x):
    return x % 2 == 0

def son_pares(x, y):
    return es_par(x) and es_par(y)

if __name__ == "__main__":
    print(son_pares(1, 2))
    print(son_pares(4, 2))
