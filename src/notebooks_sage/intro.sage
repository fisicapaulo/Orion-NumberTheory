# Introdução — Orion-NumberTheory (Sage)
# Execução local: sage src/sage/intro.sage

from sageall import ZZ, factor

print("Início do Sage script")

# Primalidade com Sage (mais robusta que heurísticas puras)
def is_prime_sage(n: int) -> bool:
    return ZZ(n).is_prime()

# Fatoração com Sage (algoritmos avançados embutidos)
def factor_sage(n: int):
    # Retorna lista de pares (p, e)
    return list(factor(ZZ(n)))

# 1) Primos até 200
primos = [n for n in range(2, 201) if is_prime_sage(n)]
print("Primos até 200:", primos)

# 2) Fatoração de alguns inteiros
import random
nums = [random.randint(10**6, 10**6 + 5000) for _ in range(5)]
print("Fatorações:")
for n in nums:
    print(n, "->", factor_sage(n))

# 3) Exemplo de comparação de tempo (simples)
# Dica: para benchmarks sérios, use timeit e tamanhos maiores controlados.
def trial_division_py(n: int):
    if n == 0:
        return [(0, 1)]
    if n < 0:
        return [(-1, 1)] + trial_division_py(-n)
    factors = []
    d = 2
    nn = n
    while d * d <= nn:
        c = 0
        while nn % d == 0:
            nn //= d
            c += 1
        if c:
            factors.append((d, c))
        d = 3 if d == 2 else d + 2
    if nn > 1:
        factors.append((nn, 1))
    return factors

print("\nComparação rápida (Sage factor vs trial_division_py) em um número aleatório:")
m = random.randint(10**8, 10**8 + 200000)
print("n =", m)
print("Sage factor:", factor_sage(m))
print("trial_division_py:", trial_division_py(m))

# Próximos passos:
# - Implementar Miller–Rabin manualmente (para estudo) e comparar com is_prime().
# - Medir tempos com timeit e amostras controladas.
# - Extrair utilitários para um módulo separado quando o repositório crescer.

