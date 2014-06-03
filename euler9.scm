(define (pyth-triplet-adds-to n)
  (let iter ((a 1) (b 2) (c 2))
    (cond
     ((> a n)
      '(0 0 0))
     ((> b n)
      (iter (+ a 1) (+ a 2) (+ a 3)))
     ((> c n) 
      (iter a (+ b 1) (+ b 2)))
     ((and (= (+ a b c) n) (pyth-tripple? a b c)) 
      (list a b c))
     (else 
      (iter a b (+ c 1))))))

(define (pyth-tripple? a b c)
  (and
    (= (+ (* a a) (* b b)) (* c c))
    (> a 0)
    (> b 0)
    (< a b)
    (< b c)))

(display (apply * (pyth-triplet-adds-to 1000)))
