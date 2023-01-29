;;;; curs_move

(in-package :ncurses)

(declaim (inline move))
(define-alien-routine move int
  "int -> int -> int
The `move` and `wmove` routines move the cursor associated with the window to line /y/ and column /x/. This routines does not move the physical cursor of the terminal until `refresh` is called. The position specified is relative to the upper left-hand corner of the window, which is (0, 0).
"
  (y int)
  (x int))

(declaim (inline wmove))
(define-alien-routine wmove int
  "WINDOW -> int -> int -> int
The `move` and `wmove` routines move the cursor associated with the window to line /y/ and column /x/. This routines does not move the physical cursor of the terminal until `refresh` is called. The position specified is relative to the upper left-hand corner of the window, which is (0, 0).
"
  (win WINDOW)
  (y int)
  (x int))
