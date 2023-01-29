;;;; curs_initscr

(in-package :ncurses)

(declaim (inline initscr))
(define-alien-routine initscr WINDOW
  "`initscr` is normally the first `curses` routine to call when initializing a program.")

(declaim (inline endwin))
(define-alien-routine endwin int
  "The program must also call `endwin` for each terminal being used before exiting from `curses`.")
