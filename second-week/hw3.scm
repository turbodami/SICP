(define (filtered-accumulate filter combiner null-value func a next b)
  (cond ((> a b) null-value)
        ((filter a)
          (combiner (func a) (filtered-accumulate filter combiner null-value func (next a) next b)
        (else (filtered-accumulate filter combiner null-value func (next a) next b))))

(define (sum-square-primes filter func a next b)
  (filtered-accumulate filter + 0 func a next b))

(define (inc x) (+ x 1))

(define (square x) (* x x))

(define (product-gcd filter func a next b)
  (filtered-accumulate filter * 1 func a next b))

(product-gcd gcd identity 1 inc n)

(sum-square-primes prime? square 1 inc 5)
