(define (last-pair xs)
  (cond ((null? xs) (error "last-pair expects a non-empty list"))
        ((null? (cdr xs)) xs)
        (else (last-pair (cdr xs)))))
 
(define (last-pair xs)
  (cond ((null? xs) (error "last-pair expects a non-empty list"))
        (else (cons (list-ref xs (- (length xs) 1))
                    nil))))