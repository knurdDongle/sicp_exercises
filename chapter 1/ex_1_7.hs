module Ex1_7 where

average x y =
  (x + y) / 2

improve guess x =
  average guess (x / guess)

small_enough x =
  x / 100

good_enough guess x =
  abs (guess ** 2 - x) < small_enough x

sqrt_iter guess x =
  if good_enough guess x then print guess
  else sqrt_iter (improve guess x) x
