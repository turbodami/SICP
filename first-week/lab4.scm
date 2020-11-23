(define (dupls-removed sent)
  (if (empty? sent)
      '()
      (se (member (first sent) (butfirst sent)))
      (dupls-removed (butfirst sent)) ))

(dupls-removed ’(a b c a e d e b))