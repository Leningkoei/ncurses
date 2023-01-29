;;;; curs_variables

(in-package :ncurses)

(define-alien-variable curscr WINDOW)
(define-alien-variable newscr WINDOW)
(define-alien-variable stdscr WINDOW)

(defparameter *curscr* curscr "")
(defparameter *newscr* newscr "")
(defconstant +stdscr+ stdscr "")

(declaim (inline get-color-pairs))
(define-alien-routine get-color-pairs int
  "")

(declaim (inline get-colors))
(define-alien-routine get-colors int
  "")

(declaim (inline get-cols))
(define-alien-routine get-cols int
  "")

(declaim (inline get-escdelay))
(define-alien-routine get-escdelay int
  "")

(declaim (inline get-lines))
(define-alien-routine get-lines int
  "")

(declaim (inline get-tabsize))
(define-alien-routine get-tabsize int
  "")
