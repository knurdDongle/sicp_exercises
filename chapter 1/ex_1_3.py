def solution(a, b, c):
    if a < b and a < c:
        return b** 2 + c ** 2
    if b < a and b < c:
        return a ** 2 + c ** 2
    else:
        return a ** 2 + b ** 2

print(solution(3, 2, 1))
