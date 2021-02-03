(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define logB 
    (lambda (x B) 
      (/ (log x) (log B))))

(define log2 (lambda (x) (logB x 2)))
(define log3 (lambda (x) (logB x 3)))

(define (car n)
  (cond ((= (remainder n 3) 1) (log2 n))
        ((= (remainder n 3) 2) (log2 n))
        (else (car (/ n 3)))))

(define (cdr n)
  (cond ((= (remainder n 2) 1) (log3 n))
        (else (cdr (/ n 2)))))