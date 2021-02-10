(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))
 
(define (par2 r1 r2)
  (let ((one (make-interval 1 1))) 
    (div-interval one
                  (add-interval (div-interval one r1)
                                (div-interval one r2)))))
 
(define ina (make-center-percent 10 1))
(define inb (make-center-percent 20 2))
(define inc (make-center-percent 20 0))
 
(display (par1 ina inb))
(6.361967213114754 . 6.9844067796610165)
 
(display (par2 ina inb))
(6.5776271186440685 . 6.7554098360655725)