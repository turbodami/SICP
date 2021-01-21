(define (square x) (* x x))

(define (square-root x) 
        (define (good-enough guess previous-guess)
                (< (if (> previous-guess guess)
                        (/ previous-guess guess)
                        (/ guess previous-guess))
                    1.001))
        (define (improve guess)
                (/ (+ guess (/ x guess)) 2))
        (define (sqrt-step next-guess guess)
                (if (good-enough next-guess guess)
                    next-guess
                    (sqrt-step (improve next-guess) next-guess)))
        (sqrt-step (improve 1) 1))

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

(define (make-rectangle base height)
  		(cons base height))

(define (rect-base rectangle)
  		(car rectangle))

(define (rect-height rectangle)
  		(cdr rectangle))

(define (rect-base-length rectangle)
  		(square-root (+ (square (- (x-point (end-segment (rect-base rectangle))) (x-point (start-segment (rect-base rectangle))))) 
                 	 (square (- (y-point (end-segment (rect-base rectangle))) (y-point (start-segment (rect-base rectangle))))))))

(define (rect-height-length rectangle)
  		(square-root (+ (square (- (x-point (end-segment (rect-height rectangle))) (x-point (start-segment (rect-height rectangle))))) 
                 	 (square (- (y-point (end-segment (rect-height rectangle))) (y-point (start-segment (rect-height rectangle))))))))

(define (rect-perimeter rectangle)
  		(* (+ (rect-base-length rectangle) (rect-height-length rectangle)) 2))

(define (rect-area rectangle)
  		(* (rect-base-length rectangle) (rect-height-length rectangle)))

(define start (make-point 2 1))
(define end (make-point 10 1))
(define base (make-segment start end))
(define start (make-point 2 1))
(define end (make-point 2 5))
(define height (make-segment start end))
(define rectangle (make-rectangle base height))
(rect-base-length rectangle)
(rect-height-length rectangle)
(rect-perimeter rectangle)
(rect-area rectangle)