function solution($a, $b, $c) {
  if ($a < $b && $a < $c) {
    return ($b ** 2) + ($c ** 2);
  } elseif ($b < $a && $b < $c) {
    return ($a ** 2) + ($c ** 2);
  }
  return ($a ** 2) + ($b ** 2);
}

echo solution(3, 2, 1);
