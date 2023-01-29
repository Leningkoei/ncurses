;;;; curs_variables

(in-package :ncurses)

(define-alien-variable curscr WINDOW)
(define-alien-variable newscr WINDOW)
(define-alien-variable stdscr WINDOW)

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

(declaim (inline get-curscr))
(define-alien-routine get-curscr WINDOW
  "")

(declaim (inline get-newscr))
(define-alien-routine get-newscr WINDOW
  "")

(declaim (inline get-stdscr))
(define-alien-routine get-stdscr WINDOW
  "")
