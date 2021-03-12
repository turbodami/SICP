(define (leaf? x) (not (pair? x)))
 
(define (tree-map proc tree)
  (cond ((null? tree) nil)
        ((leaf? tree) (proc tree))
        (else (cons (tree-map proc (car tree))
                    (tree-map proc (cdr tree))))))
 
(define (tree-map proc tree)
  (map (lambda (sub-tree)
         (if (leaf? sub-tree)
             (proc sub-tree) 
             (tree-map proc sub-tree)))
       tree))