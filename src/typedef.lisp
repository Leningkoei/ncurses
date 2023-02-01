;;;; typedef

(in-package :ncurses)


(define-alien-type void* (* (struct void)))

(define-alien-type WINDOW void*)
(define-alien-type attr-t int)
(define-alien-type chtype int)
