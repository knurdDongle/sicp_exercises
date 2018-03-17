module Ex1_3 where

solution a b c =
  if a < b && a < c then (b ** 2 + c ** 2)
  else if b < a && b < c then (a ** 2 + c ** 2)
  else (a ** 2 + b ** 2)
