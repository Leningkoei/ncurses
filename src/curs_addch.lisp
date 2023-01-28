;;;; curs_addch

(in-package :ncurses)

(declaim (inline addch))
(define-alien-routine addch int
  ""
  (ch chtype))

(declaim (inline waddch))
(define-alien-routine waddch int
  ""
  (win WINDOW)
  (ch chtype))
