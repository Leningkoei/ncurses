;;;; curs_getch

(in-package :ncurses)

(declaim (inline getch))
(define-alien-routine getch int
  "The `getch` routine read a character from the window.")

(declaim (inline wgetch))

(declaim (inline mvgetch))

(declaim (inline mvwgetch))

(declaim (inline ungetch))

(declaim (inline has-key))
