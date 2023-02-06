;;;; wresize

(in-package :ncurses)

(declaim (inline wresize))
(define-alien-routine wresize int
  "win: WINDOW -> lines: int -> column: int -> OK: int
This is an extension to the curses library. It reallocates storage for an `ncurses` window to adjust its dimensions to the specified values. If either dimension is larger than the current values, the window's data is filled with blanks that have the current background rendition (as set by `wbkgdset`) merged into them.
"
  (win WINDOW)
  (lines int)
  (column int))
