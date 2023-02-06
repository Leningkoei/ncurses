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
(define-alien-routine subwin WINDOW
  ""
  (win WINDOW)
  (nlines int)
  (ncols int)
  (begin-y int)
  (begin-x int))

(declaim (inline derwin))
(define-alien-routine derwin WINDOW
  "win: WINDOW -> nlines: int -> ncols: int -> begin-y: int -> begin-x: int -> derwin: WINDOW
Calling `derwin` is the same as calling `subwin`, except that /begin-y/ and /begin-x/ are releave to the origin of the window /orig/ rather than the screen. There is no different between the subwindows and the derived windows.
"
  (win WINDOW)
  (nlines int)
  (ncols int)
  (begin-y int)
  (begin-x int))

(declaim (inline mvderwin))
(define-alien-routine mvderwin int
  "win: WINDOW -> par-y: int -> par-x: int -> OK: int
Calling `mvderwin` moves a derived window (or subwindow) inside its parent window. The screen-relative parameters of the window are not changed. This routine is used to display different parts of the parent window at the same physical position on the screen.
"
  (win WINDOW)
  (par-y int)
  (par-x int))

(declaim (inline dupwin))
(declaim (inline wsyncup))
(declaim (inline syncok))
(declaim (inline wcursyncup))
(declaim (inline wsyncdown))
