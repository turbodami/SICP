(define (reverse-ls xs)
  (define (reverse-loop items result)
    (cond ((null? items) result)
          (else (reverse-loop (cdr items) (cons (car items) result)))))
  (reverse-loop xs nil))
 
(define (reverse-ls xs)
  (append (reverse (cdr xs))
          (list (car xs))))