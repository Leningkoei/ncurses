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
(define-alien-routine attroff int
  "attrs: int
"
  (attrs int))

(declaim (inline wattroff))
(define-alien-routine wattroff int
  "win: WINDOW -> attrs: int -> OK: int
"
  (win WINDOW)
  (attrs int))

(declaim (inline attron))
(define-alien-routine attron int
  "attrs: int -> OK: int
"
  (attrs int))

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

(define-alien-variable a-normal     attr-t)
(define-alien-variable a-standout   attr-t)
(define-alien-variable a-underline  attr-t)
(define-alien-variable a-reverse    attr-t)
(define-alien-variable a-blink      attr-t)
(define-alien-variable a-dim        attr-t)
(define-alien-variable a-bold       attr-t)
(define-alien-variable a-protect    attr-t)
(define-alien-variable a-invis      attr-t)
(define-alien-variable a-altcharset attr-t)
(define-alien-variable a-italic     attr-t)
(define-alien-variable a-chartext   attr-t)
(define-alien-variable a-color      attr-t)
(define-alien-variable wa-horizontal attr-t)
(define-alien-variable wa-left       attr-t)
(define-alien-variable wa-low        attr-t)
(define-alien-variable wa-right      attr-t)
(define-alien-variable wa-top        attr-t)
(define-alien-variable wa-vertical   attr-t)

(defconstant +a-normal+    a-normal)
(defconstant +a-standout+  a-standout)
(defconstant +a-underline+ a-underline)
(defconstant +a-reverse+   a-reverse)

(defmacro ctrl (x)
  `(logand (char-int ,x) #x1f))
