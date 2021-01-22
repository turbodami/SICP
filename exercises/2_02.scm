(define (make-point x y)
  		(cons x y))

(define (x-point point)
  		(car point))

(define (y-point point)
  		(cdr point))

(define (print-point point)
  		(newline)
  		(display "(")
  		(display (x-point point))
        (display ",")
  		(display (y-point point))
  		(display ")"))

(define (make-segment start end)
  		(cons start end))

(define (start-segment segment)
  		(car segment))

(define (end-segment segment)
  		(cdr segment))

(define (average x y) (/ (+ x y) 2))

(define (midpoint-segment segment)
  		(make-point (- (x-point (end-segment segment)) (x-point (start-segment segment))) (- (y-point (end-segment segment)) (y-point (start-segment segment)))))

(define start (make-point 2 1))
(define end (make-point 4 2))
(define segment (make-segment start end))
(define mid (midpoint-segment segment))
(print-point mid)