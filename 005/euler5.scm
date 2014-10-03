(define (div-by-all? n x)
  (cond
    ((= x 0)
      #t)
    ((= (remainder n x) 0)
      (div-by-all? n (- x 1)))
    (else
      #f)))

(define (solve n)
  (let lp ((i 1))
    (if (div-by-all? i n) i (lp (+ i n)))))

(display (solve 20)) (newline)
