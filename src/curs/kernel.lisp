;;;; curs_kernel

(in-package :ncurses)

(declaim (inline def-prog-mode))
(declaim (inline def-shell-mode))
(declaim (inline reset-prog-mode))
(declaim (inline reset-shell-mode))
(declaim (inline resetty))
(declaim (inline savetty))
(declaim (inline getsyx))
(declaim (inline setsyx))
(declaim (inline ripoffline))

(declaim (inline curs-set))
(define-alien-routine curs-set int
  "visibility: int -> previous cursor state: int | ERR: int
The `curs-set` routine sets the cursor state to invisible, normal, or very visible for `visibility` equal to `0`, `1`, or `2` respectively. If the terminal supports the /visibility/ requested, the previous /cursor/ state is returned; otherwise, `ERR` is returned.
"
  (visibility int))

(declaim (inline napms))
(define-alien-routine napms int
  "ms: int -> OK: int
The `napms` routine is used to sleep for /ms/ milliseconds.
"
  (ms int))
