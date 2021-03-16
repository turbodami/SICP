(define (count-leaves t)
  (accumulate +
              0 
              (map (lambda (root)
                     (if (leaf? root)
                         1
                         (count-leaves root)))
                   t)))
 
(define x (cons (list 1 2) (list 3 4)))
(count-leaves x)
4
(count-leaves (list x x))
8