Copyright (C) 2014 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO warranty; not even
for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Monday May 19, 2014 at 9:55:33 PM
  Release 9.2 || Microcode 15.1 || Runtime 15.7 || Win32 1.8 || SF 4.41 || LIAR/i386 4.118
  Edwin 3.116
;You are in an interaction window of the Edwin editor.
;Type `C-h' for help, or `C-h t' for a tutorial.
;`C-h m' will describe some commands.
;`C-h' means: hold down the Ctrl key and type `h'.
;Package: (user)

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



