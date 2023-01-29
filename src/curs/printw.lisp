;;;; curs_printw

(in-package :ncurses)

(declaim (inline printw))
(define-alien-routine printw int
  "char* -> ... -> int
"
  (fmt c-string))

(declaim (inline wprintw))
(declaim (inline mvprintw))
(declaim (inline mvwprintw))
(declaim (inline vw_printw))
(declaim (inline vwprintw))
