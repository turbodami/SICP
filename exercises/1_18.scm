(define (fib n)
    (fib-iter 1 0 0 1 n))

(define (even? n)
    (= (remainder n 2) 0))

(define (remainder a b)
    (cond ((= a b) 0)
          ((< a b) a)
          (else (remainder (- a b) b))))

(define (fib-iter a b p q count)
    (cond ((= count 0) b)
          ((even? count)
          (fib-iter a
                    b
                    (+ (* q q) (* p p))
                    (+ (* q q) (* p q 2))
                    (/ count 2)))
          (else (fib-iter (+ (* b q) (* a q) (* a p))
                           (+ (* b p) (* a q))
                           p
                           q
                           (- count 1))))