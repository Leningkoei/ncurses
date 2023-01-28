;;;; typedef

(in-package :ncurses)


(define-alien-type void* (* (struct unknown)))

(define-alien-type WINDOW void*)
(define-alien-type attr_t void*)
(define-alien-type chtype char)
