;;;; curs_getyx

(in-package :ncurses)

(defun getyx (win)
  "win: WINDOW -> yx-pair: (y . x)
The `getyx` macro places the current cursor position of the given window in the two integer variables /y/ and /x/.
If /win/ is a subwindow, the `getparyx` macro places the beginning coordinates of the subwindow relative to the parent window into two integer variables /y/ and /x/. Otherwise, /-1/ is placed into /y/ and /x/.
Like `getyx`, the `getbegyx` and `getmaxyx` macros store the current beginning coordinates and size of the specified window.
"
  (with-alien ((y int) (x int))
    (alien-funcall (extern-alien "GETYX" (function void WINDOW (* int) (* int))) win (addr y) (addr x))
    (cons y x)))

(defun getparyx (win)
  "win: WINDOW -> yx-pair: (y . x)
The `getyx` macro places the current cursor position of the given window in the two integer variables /y/ and /x/.
If /win/ is a subwindow, the `getparyx` macro places the beginning coordinates of the subwindow relative to the parent window into two integer variables /y/ and /x/. Otherwise, /-1/ is placed into /y/ and /x/.
Like `getyx`, the `getbegyx` and `getmaxyx` macros store the current beginning coordinates and size of the specified window.
"
  (with-alien ((y int) (x int))
    (alien-funcall (extern-alien "GETPARYX" (function void WINDOW (* int) (* int))) win (addr y) (addr x))
    (cons y x)))

(defun getbegyx (win)
  "win: WINDOW -> yx-pair: (y . x)
The `getyx` macro places the current cursor position of the given window in the two integer variables /y/ and /x/.
If /win/ is a subwindow, the `getparyx` macro places the beginning coordinates of the subwindow relative to the parent window into two integer variables /y/ and /x/. Otherwise, /-1/ is placed into /y/ and /x/.
Like `getyx`, the `getbegyx` and `getmaxyx` macros store the current beginning coordinates and size of the specified window.
"
  (with-alien ((y int) (x int))
    (alien-funcall (extern-alien "GETBEGYX" (function void WINDOW (* int) (* int))) win (addr y) (addr x))
    (cons y x)))

(defun getmaxyx (win)
  "win: WINDOW -> yx-pair: (y . x)
The `getyx` macro places the current cursor position of the given window in the two integer variables /y/ and /x/.
If /win/ is a subwindow, the `getparyx` macro places the beginning coordinates of the subwindow relative to the parent window into two integer variables /y/ and /x/. Otherwise, /-1/ is placed into /y/ and /x/.
Like `getyx`, the `getbegyx` and `getmaxyx` macros store the current beginning coordinates and size of the specified window.
"
  (with-alien ((y int) (x int))
    (alien-funcall (extern-alien "GETMAXYX" (function void WINDOW (* int) (* int))) win (addr y) (addr x))
    (cons y x)))
