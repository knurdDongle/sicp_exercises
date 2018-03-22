(defn average [x y]
  (/ (+ x y) 2))

(defn improve [guess x]
  (average guess (/ x guess)))

(defn abs [n]
  (if (< n 0)
    (- n)
    n))

(defn small-enough [x]
  (/ x 100))

(defn good-enough [guess x]
  (< (abs (- (* guess guess) x)) (small-enough x)))

(defn sqrt-iter [guess x]
  (if (good-enough guess x)
    (println guess)
    (sqrt-iter (improve guess x) x)))

(sqrt-iter 1.0 0.09)
