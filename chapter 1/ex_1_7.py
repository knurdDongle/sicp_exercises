def average(x, y):
    return (x + y) / 2

def improve(guess, x):
    return average(guess, (x / guess))

def smallEnough(x):
    return x / 100

def goodEnough(guess, x):
    return abs(guess ** 2 - x) < smallEnough(x)

def sqrtIter(guess, x):
    return guess if goodEnough(guess, x) else sqrtIter(improve(guess, x), x)

print(sqrtIter(1, 9))
