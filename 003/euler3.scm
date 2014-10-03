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

(define (pf num)
  (define (lp num i)
    (if (= (remainder num i) 0)
      (if (is-prime? i)
        i
        (lp num (- i 1)))
      (lp num (- i 1))))
  (lp num (floor (sqrt num))))

(display (pf 13195))
(newline)
(display (pf 600851475143))
(newline)
