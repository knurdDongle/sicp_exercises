(defn sum_of_big_squares [num1 num2 num3]
  (cond
    (and (< num1 num2) (< num1 num3)) (println(+ (* num2 num2) (* num3 num3)))
    (and (< num2 num1) (< num2 num3)) (println(+ (* num1 num1) (* num3 num3)))
    :else (println(+ (* num1 num1) (* num2 num2)))))

(sum_of_big_squares 3 2 1)
