(define (ordered? sent)
  (cond ((empty? (bf sent)) #t)
	((> (first sent) (first (bf sent))) #f)
	(else (ordered? (bf sent))) ))