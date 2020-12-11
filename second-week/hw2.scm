(define (accumulate combiner null-value func a next b)
  (if (> a b)
    null-value
    (combiner (func a) (accumulate combiner null-value func (next a) next b))))

(define (sum func a next b)
  (accumulate + 0 func a next b))

(define (product func a next b)
  (accumulate * 1 func a next b))

(define (inc x) (+ x 1))

(define (identity x) x)

(product identity 1 inc 100)