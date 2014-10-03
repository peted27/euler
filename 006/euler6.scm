;(define lst `(1 2 3 4 5 6 7 8 9 10))

(define (iota n)
  (let lp ((n n) (i 1))
    (if (> i n)
      `()
      (cons i (lp n (+ i 1))))))

(define (solve lst)
    (- (sqr (apply + lst)) (apply + (map sqr lst))))


(define (sqr n) (* n n))

(display (solve (iota 100))) (newline)
