(define (ends-e sent)
  (cond ((empty? sent) '())
	((equal? (last (first sent)) 'e)
	 (se (first sent) (ends-e (bf sent))))
	(else (ends-e (bf sent)))))

(ends-e ’(please put the salami above the blue elephant))