(define (make-interval a b) (cons a b))

(define (upper-bound interval)
  (if (> (car interval) (cdr interval)) (car interval)
       (cdr interval)))

(define (lower-bound interval)
  (if (< (car interval) (cdr interval)) (car interval)
       (cdr interval)))

;add/sub/mul/div of more intervals
(define (add-interval x y)
    (make-interval (+ (lower-bound x) (lower-bound y))
                   (+ (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (cond ((or (and (= (lower-bound y) 0) (= (upper-bound y) 0)) 
             (and (= (lower-bound x) 0) (= (upper-bound x) 0))) (display "Errore: intervallo non valido socio"))
        (else (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))))