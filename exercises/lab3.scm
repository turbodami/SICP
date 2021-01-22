(define (square x)(* x x))

(define (sum-squares num1 num2)
  (+ (square num1) (square num2)))

(define (sum-squares-larger-2 val1 val2 val3)
  (cond ((and (> val1 val2) (> val2 val3)) (sum-squares val1 val2))
        ((and (> val1 val2) (> val3 val2)) (sum-squares val1 val3))
        ((and (> val2 val1) (> val3 val1)) (sum-squares val2 val3))))

(sum-squares-larger-2 8 3 10)