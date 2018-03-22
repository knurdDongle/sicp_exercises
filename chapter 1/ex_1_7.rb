def average(x, y)
  return (x + y) / 2.0
end

def improve(guess, x)
  return average(guess, (x / guess))
end

def smallEnough(x)
  return x / 100.0
end

def goodEnough(guess, x)
  return ((guess ** 2) - x).abs < smallEnough(x)
end

def sqrtIter(guess, x)
  return goodEnough(guess, x) ? guess : sqrtIter(improve(guess, x), x)
end

puts sqrtIter(1, 9)
