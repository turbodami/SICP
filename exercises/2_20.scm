(define (same-parity head . tail)
  (cons head 
        (filter (if (even? head) 
                    even?
                    odd?)
                tail)))