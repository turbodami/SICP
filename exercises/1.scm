(define (identity a) a)

(define (product func a next b)
  (if (> a b)
    1
    (* (func a) (product func (next a) next b))))

(define (! n)
  (product (identity n) 1 1+ n))

(define pi )