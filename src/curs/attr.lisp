;;;; curs_attr

(in-package :ncurses)

(declaim (inline attr-get))

(declaim (inline wattr-get))

(declaim (inline attr-set))

(declaim (inline wattr-set))

(declaim (inline attr-off))

(declaim (inline wattr-off))

(declaim (inline attr-on))

(declaim (inline wattr-on))

(declaim (inline attroff))

(declaim (inline wattroff))
(define-alien-routine wattroff int
  "win: WINDOW -> attrs: int -> OK: int
"
  (win WINDOW)
  (attrs int))

(declaim (inline attron))

(declaim (inline wattron))
(define-alien-routine wattron int
  "win: WINDOW -> attrs: int -> OK: int
"
  (win WINDOW)
  (attrs int))

(declaim (inline attrset))
(define-alien-routine attrset int
  (attrs int))

(declaim (inline wattrset))

(declaim (inline chgat))

(declaim (inline wchgat))

(declaim (inline mvchgat))

(declaim (inline mvwchgat))

(declaim (inline color-set))

(declaim (inline wcolor-set))

(declaim (inline standend))

(declaim (inline wstandend))

(declaim (inline standout))

(declaim (inline wstandout))

(define-alien-variable a-normal     int)
(define-alien-variable a-standout   int)
(define-alien-variable a-underline  int)
(define-alien-variable a-reverse    int)
(define-alien-variable a-blink      int)
(define-alien-variable a-dim        int)
(define-alien-variable a-bold       int)
(define-alien-variable a-protect    int)
(define-alien-variable a-invis      int)
(define-alien-variable a-altcharset int)
(define-alien-variable a-italic     int)
(define-alien-variable a-chartext   int)
(define-alien-variable a-color      int)
(define-alien-variable wa-horizontal int)
(define-alien-variable wa-left       int)
(define-alien-variable wa-low        int)
(define-alien-variable wa-right      int)
(define-alien-variable wa-top        int)
(define-alien-variable wa-vertical   int)

(defconstant +a-normal+    a-normal)
(defconstant +a-standout+  a-standout)
(defconstant +a-underline+ a-underline)
(defconstant +a-reverse+   a-reverse)
