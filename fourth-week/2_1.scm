(define (abs x)
  		(cond ((> x 0) x)
              ((= x 0) 0)
              ((< x 0) (- x))))

(define (make-rat n d)
  		(if (<= d 0) (cons (- (abs n)) (abs d))
            		 (cons n d)))

(define (num x) (car x))

(define (den x) (cdr x))

(define (print-rat x)
  		(newline)
  		(display (num x))
        (display "/")
        (display (den x)))
              
 (define rat1 (make-rat 5 -3))
 (print-rat rat1)