(define (timed-prime-test n)
  	(newline)
  	(display n)
  	(start-prime-test n (runtime)))
  
(define (start-prime-test n start-time)
  	(cond ((prime? n) (report-prime (- (runtime) start-time)))
          (else (display " n is not prime bro"))))

(define (report-prime elapsed-time)
  	(display " *** ")
  	(display elapsed-time))

(define (smallest-divisor n)
  	(find-divisor n 2))

(define (find-divisor n test-divisor)
  	(cond ((> (* test-divisor test-divisor) n) n)
        	((divides? test-divisor n) test-divisor)
        	(else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  	(= (remainder b a) 0))

(define (prime? n)
  	(= n (smallest-divisor n)))

(define (search-for-primes i last)
  	(cond ((> i last) (display " end "))
          ((= (remainder i 2) 0) (search-for-primes (+ i 1) last))
          (else (timed-prime-test i) (search-for-primes (+ i 1) last))))

(search-for-primes 1000000 1000050)