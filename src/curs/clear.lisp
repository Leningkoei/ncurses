;;;; curs_clear

(in-package :ncurses)

(declaim (inline erase))
(declaim (inline werase))

(declaim (inline clear))
(define-alien-routine clear int
  "void -> OK: int
The `clear` and `wclear` routines are like `erase` and `werase`, but they also call `clearok`, so that the screen is cleared completely on the next call to `wrefresh` for that window and repainted from scratch.
"
  )

(declaim (inline wclear))
(define-alien-routine wclear int
  "win: WINDOW -> OK: int
The `clear` and `wclear` routines are like `erase` and `werase`, but they also call `clearok`, so that the screen is cleared completely on the next call to `wrefresh` for that window and repainted from scratch.
"
  (win WINDOW))

(declaim (inline clrtobot))
(declaim (inline wclrtobot))
(declaim (inline clrtoeol))
(declaim (inline wclrtoeol))
