;;;; curs_window

(in-package :ncurses)

(declaim (inline newwin))
(define-alien-routine newwin WINDOW
  "nline: int -> ncols: int -> begin-y: int -> begin-x: int -> new-window: WINDOW
Calling `newwin` creates and returns a pointer to a new window with the given number of lines and columns.
The upper left-hand corner of the window is at line /begin-y/, column /begin-x/.
If either /nlines/ or /ncols/ is zero, they default to `LINES` - /begin-y/ and `COLS` - /begin-x/ (The MAX).
A new full-screen window is created by calling `newwin(0, 0, 0, 0)`.
Regardless of the function used for creating a new window (e.g., `newwin`, `subwin`, `derwin`, `newpad`), rather than a duplicate (with `dupwin`), all of the window modes are initialized to the default values. These functions set window modes after a window is created: `idcok`, `idlok`, `immedok`, `keypad`, `leaveok`, `nodelay`, `scrollok`, `setscrreg`, `syncok`, `wbkgdset`, `wbkgrndset` and `wtimeout`.
"
  (nlines int)
  (ncols int)
  (begin-y int)
  (begin-x int))

(declaim (inline delwin))
(declaim (inline mvwin))
(declaim (inline subwin))
(declaim (inline derwin))
(declaim (inline mvderwin))
(declaim (inline dupwin))
(declaim (inline wsyncup))
(declaim (inline syncok))
(declaim (inline wcursyncup))
(declaim (inline wsyncdown))
