
(define (even? n)
    (= (remainder n 2) 0))

(define (remainder a b)
    (cond ((= a b) 0)
          ((< a b) a)
          (else (remainder (- a b) b))))

(define (square n) (* n n))

(define (double n)
    (+ n n))

(define (halve n)
    (if (even? n) (halve-iter 0 n) 0))

(define (halve-iter a b)
    (cond ((= a b) a)
          (else (halve-iter (+ a 1) (- b 1)))))
          
(define (mul a b)
    (mul-iter 0 a b))

(define (mul-iter res a b)
    (cond ((= b 0) res)
          ((even? b) (mul-iter res (double a) (/ b 2)))
          (else (mul-iter (+ res a) a (- b 1)))))