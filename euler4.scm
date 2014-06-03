(define (pal? n)
  (let loop ((x n) (y 0))
    (cond
     ; ((and (= y 0) (= (remainder x 10) 0))
     ;   #f)
      ((= x 0)
        #f)
     ; ((and (> x y) (= (quotient x 10) y))
     ;   #t)
      ((= x y)
        #t)
      (else
        (loop (quotient x 10) (+ (* y 10) (remainder x 10)))))))

(define (f x y pal)
  (cond
    ((< x 100)
      pal)
    ((< y 100)
      (f (- x 1) 999 pal))
    ((pal? (* x y))
      (f x (- y 1) (max (* x y) pal)))
    (else
      (f x (- y 1) pal))))


(display (f 999 999 0))
(newline)

