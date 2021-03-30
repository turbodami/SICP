(define empty-board nil)
 
(define (adjoin-position row positions)
  (cons row positions))
 
(define (safe? position)
 
  (define board-size (length position))
 
  (define (safe-diagonal? position)
 
    ; test the position for the newly placed queen
    (define (col-safe? new-row col position)
      (cond ((> col board-size) true)
            ((= (abs (- new-row (car position)))
                ; the new qeeen's position is always on column 1
                (abs (- col 1))) false)
            (else (col-safe? new-row (+ col 1) (cdr position)))))
 
    ; the new queen's position is always in column 1
    ; so the initial column to check is always 2
    (col-safe? (car position) 2 (cdr position)))
 
  (define (safe-horizontal? position)
    ; does the new row (car) appear anywhere else?
    (not (member (car position) (cdr position))))
 
  (or (= (length position) 1)  ; 1x1 board
      (and (safe-horizontal? position)
           (safe-diagonal?   position))))

