
(define (equal? a b)
  (cond ((not (pair? a))
	 (and (not (pair? b)) (eq? a b)))
	((pair? b)
	 (and (equal? (car a) (car b)) (equal? (cdr a) (cdr b))))
	(else false)))
;Value: equal?

(equal? '(this is a list) '(this is a list))
;Value: #t

(equal? '(this is a list) '(this (is a) list))
;Value: #f

(equal? () ())
;Value: #t

(equal? 'a 'b)
;Value: #f

(equal? '(a) 'b)
;Value: #f



