def n_sum(n):
    if n == 0:
        return 0
    return n + n_sum(n-1)

if __name__ == "__main__":
    print(n_sum(5))
