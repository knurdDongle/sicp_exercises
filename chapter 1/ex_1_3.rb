def solution(a, b, c)
  if a < b && a < c
    return b ** 2 + c ** 2
  elsif b < a && b < c
    return a ** 2 + c ** 2
  else
    return a ** 2 + b ** 2
  end
end

puts solution(3, 2, 1)
