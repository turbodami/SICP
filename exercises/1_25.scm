(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) ((lambda (x) (* x x)) (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (expmod2 base exp m)
  (remainder (fast-expt base exp) m))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder ((lambda (x) (* x x)) (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(expmod 51 130 32) ;= 9
(expmod2 51 130 32) ;= 0