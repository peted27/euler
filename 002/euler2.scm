(define (fib a b i)
  (cond
    ((and (> 4000000 (+ a b)) (= (remainder (+ a b) 2) 0)) 
      (+ i a b (fib b (+ a b) i)))
    ((> 4000000 (+ a b))
      (fib b (+ a b) i))
    (else
      0)))

(define (f x y)
  (cond
    ((< 4000000 y)
      0)
    ((= (remainder y 2) 0)
      (+ y (f y (+ x y))))
    (else
      (f y (+ x y)))))

(display (f 0 1))
(newline)
