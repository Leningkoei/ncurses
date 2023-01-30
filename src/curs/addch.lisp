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

(declaim (inline mvaddch))
(declaim (inline mvwaddch))
(define-alien-routine mvwaddch int
  "win: WINDOW -> y: int -> x: int -> ch: chtype -> OK: int
"
  (win WINDOW)
  (y int)
  (x int)
  (ch chtype))
(declaim (inline echochar))
(declaim (inline wechochar))
