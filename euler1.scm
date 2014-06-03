(define (nat i)
  (cond
    ((= i 1000)
      0)
    ((= 0 (modulo i 3))
      (+ i (nat (+ i 1))))
    ((= 0 (modulo i 5))
      (+ i (nat (+ i 1))))
    (else
      (nat (+ i 1)))))

(display (nat 0))
(newline)
