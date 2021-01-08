(define (even? n)
    (= (remainder n 2) 0))

(define (remainder a b)
    (cond ((= a b) 0)
          ((< a b) a)
          (else (remainder (- a b) b))))

(define (square n) (* n n))

(define (fast-expt a b n)
    (cond ((= n 0) a)
          ((even? n) (fast-expt a (square b) (/ n 2)))
          (else (fast-expt (* a b) b (- n 1)))))