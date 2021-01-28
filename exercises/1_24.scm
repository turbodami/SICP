(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder ((lambda (x) (* x x)) (expmod base (/ exp 2) m))
                    m))
        (else 
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (timed-prime-test n)
      (newline)
      (display n)
      (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
      (cond ((fast-prime? n 1) (report-prime (- (runtime) start-time)))
          (else (display " ain't prime bruh"))))

(define (report-prime elapsed-time)
      (display " ** ")
      (display elapsed-time))

(define (search-for-primes i last)
      (cond ((> i last) (newline) (newline) (display " Fine porcanna la madonna "))
          ((= (remainder i 2) 0) (search-for-primes (+ i 1) last))
          (else (timed-prime-test i) (search-for-primes (+ i 1) last))))

(search-for-primes 1000 1000000)