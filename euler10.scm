
(define (isprime? n )
  (let isprime?-iter ((i 2))
    (cond
     ((= n 1) #f)
     ((> (* i i) n) #t)
     ((= 0 (remainder n i)) #f)
     (else (isprime?-iter (+ i 1))))))

(define (build-list low hi fun list)
  (cond
   ((< hi low) list)
   ((fun hi) (build-list low (- hi 1) fun (cons hi list)))
   (else (build-list low (- hi 1) fun list))))

(define (sum-primes low hi acc)
  (cond 
   ((< hi low) acc)
   ((isprime? hi) (sum-primes low (- hi 1) (+ acc hi)))
   (else (sum-primes low (- hi 1) acc))))

;(apply + (build-list 1 2000000 isprime? `()))

(sum-primes 1 2000000 0)
