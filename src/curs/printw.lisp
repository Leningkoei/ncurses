;;;; curs_printw

(in-package :ncurses)

(declaim (inline printw))
(define-alien-routine printw int
  "fmt: char* -> ... -> OK: int
"
  (fmt c-string))

(declaim (inline wprintw))
(define-alien-routine wprintw int
  "win: WiNDOW -> fmt: char* -> ... -> OK: int
"
  (win WINDOW)
  (fmt c-string))

(declaim (inline mvprintw))
(define-alien-routine mvprintw int
  "y: int -> x: int -> fmt: char* -> ... -> OK: int
"
  (y int)
  (x int)
  (fmt c-string))

(declaim (inline mvwprintw))
(declaim (inline vw_printw))
(declaim (inline vwprintw))
