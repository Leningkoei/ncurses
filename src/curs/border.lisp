;;;; curs_border

(in-package :ncurses)

(declaim (inline border))
(declaim (inline wborder))

(declaim (inline box))
(define-alien-routine box int
  "win: WINDOW -> verch: chtype -> horch: chtype -> OK: int
The `box(win, verch, horch)` routine is a shorthand for the following call: `wborder(win, verch, verch, horch, horch, 0, 0, 0, 0)`.
"
  (win WINDOW)
  (verch chtype)
  (horch chtype))

(declaim (inline hline))
(declaim (inline whline))
(declaim (inline vline))
(declaim (inline wvline))
(declaim (inline mvhline))
(declaim (inline mvwhline))
(declaim (inline mvvline))
(declaim (inline mvwvline))
