;;;; curs_util

(in-package :ncurses)

(declaim (inline unctrl))
(declaim (inline wunctrl))
(declaim (inline keyname))

(define-alien-routine keyname char
  "c: int -> keyname: char
The `keyname` routine returns a character string corresponding to the key c...
"
  (c int))

(declaim (inline key-name))
(declaim (inline filter))
(declaim (inline nofilter))
(declaim (inline use-env))
(declaim (inline use-tioctl))
(declaim (inline putwin))
(declaim (inline getwin))
(declaim (inline delay-output))
(declaim (inline flushinp))
