;;;; curs_getch

(in-package :ncurses)

(declaim (inline getch))
(define-alien-routine getch int
  "void -> character: int
The `getch` routine read a character from the window.
"
  )

(declaim (inline wgetch))
(define-alien-routine wgetch int
  "win: WINDOW -> character: int
The `wgetch` routine read a character from the window.
"
  (win WINDOW))

(declaim (inline mvgetch))

(declaim (inline mvwgetch))

(declaim (inline ungetch))

(declaim (inline has-key))

(define-alien-variable key-break int)
(define-alien-variable key-down  int)
(define-alien-variable key-up    int)
(define-alien-variable key-left  int)
(define-alien-variable key-right int)

(defconstant +key-break+ key-break)
(defconstant +key-down+  key-down)
(defconstant +key-up+    key-up)
(defconstant +key-left+  key-left)
(defconstant +key-right+ key-right)
