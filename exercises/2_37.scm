(define (matrix-*-vector m v)
  (map (lambda (m-row) 
         (dot-product m-row v)) 
       m))
 
(define (transpose mat)
  (accumulate-n cons nil mat))
 
(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (m-vector) 
           (matrix-*-vector cols m-vector)) 
         m)))