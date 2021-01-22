(define (square x) (* x x))

(define (squares nums)
  (if (empty? nums)
      '()
      (se (square (first nums))
	  (squares (bf nums)) )))

(squares '(2 3 4 5))