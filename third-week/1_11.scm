(define (f n)
  (f-iter 0 1 2 n))

(define (f-iter a b c n)
  (cond ((= 0 n) a)
        (else (f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1)))))

(define (f n)
    (cond ((< n 3) n)
      (else (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3)))))4