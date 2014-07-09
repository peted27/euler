;(define-structure triangle num nth)

;; created these functions to emulate gambit-c structure stuff in chicken
;; probably need to find out what native data type to use instead..
(define (make-triangle x y)
  (list x y))

(define (triangle-num tri)
  (car tri))

(define (triangle-nth tri)
  (cadr tri))

(define (next-triangle tri)
  (let* ((next-nth (+ (triangle-nth tri) 1))
	 (next-num (+ (triangle-num tri) next-nth)))
    (make-triangle next-num next-nth)))

(define (smart-count-factors x)
  (let* ((sqroot (sqrt x))
	 (diff (if (integer? sqroot) -1 0)))
    (define (scf-iter x i cnt)
      (cond
       ((> i sqroot)
	(+ (* cnt 2) diff))
       ((= (remainder x i) 0)
	(scf-iter x (+ i 1) (+ cnt 1)))
       (else
	(scf-iter x (+ i 1) cnt))))
    (scf-iter x 1 0)))

(define (tri-with-n-factors tri n)
  (if (> (smart-count-factors (triangle-num tri)) (- n 1)) 
      tri 
      (tri-with-n-factors (next-triangle tri) n)))

(define (solve n)
  (tri-with-n-factors (make-triangle 1 1) n))

