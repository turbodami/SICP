(define (switch sent)
  (se (switch-first (first sent))
      (switch-rest (butfirst sent)) ))

(define (switch-first wd)
  (cond ((equal? wd 'you) 'I)
	((equal? wd 'I) 'you)
	((equal? wd 'me) 'you)
	(else wd) ))

(define (switch-rest sent)
  (if (empty? sent)
      '()
      (se (switch-one (first sent))
	  (switch-rest (butfirst sent)) )))

(define (switch-one wd)
  (cond ((equal? wd 'you) 'me)
	((equal? wd 'I) 'you)
	((equal? wd 'me) 'you)
	(else wd) ))

(switch '(I dont know what I am doing))