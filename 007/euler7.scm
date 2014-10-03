; is x a prime number?
(define (is-prime? x)
  (define (lp x i)
    (cond
      ((> i (sqrt x))
        #t)
      ((= (remainder x i) 0)
        #f)
      (else
        (lp x (+ i 1)))))
  (lp x 2))

; find n-th prime number
(define (solve n)
  (let lp ((i 1) (n n) (cnt 0))
    (if (is-prime? i)
      (if (= cnt n)
        i
        (lp (+ i 1) n (+ cnt 1)))
      (lp (+ i 1) n cnt))))



(display (solve 10001)) (newline)
