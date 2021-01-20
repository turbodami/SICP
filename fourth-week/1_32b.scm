(define (accumulate combiner null-value func a next b)
  (if (> a b)
    null-value
    (combiner (func a) (accumulate combiner (combiner null-value a) func (next a) next b))))

(define (accumulate combiner null-value func a next b)
    (define (accumulate-iter combiner null-value func a next b result )))