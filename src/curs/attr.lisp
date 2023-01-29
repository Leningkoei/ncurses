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

(declaim (inline attron))

(declaim (inline wattron))

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

(define-alien-variable a-normal     attr_t)
(define-alien-variable a-standout   attr_t)
(define-alien-variable a-underline  attr_t)
(define-alien-variable a-reverse    attr_t)
(define-alien-variable a-blink      attr_t)
(define-alien-variable a-dim        attr_t)
(define-alien-variable a-bold       attr_t)
(define-alien-variable a-protect    attr_t)
(define-alien-variable a-invis      attr_t)
(define-alien-variable a-altcharset attr_t)
(define-alien-variable a-italic     attr_t)
(define-alien-variable a-chartext   attr_t)
(define-alien-variable a-color      attr_t)
(define-alien-variable wa-horizontal attr_t)
(define-alien-variable wa-left       attr_t)
(define-alien-variable wa-low        attr_t)
(define-alien-variable wa-right      attr_t)
(define-alien-variable wa-top        attr_t)
(define-alien-variable wa-vertical   attr_t)
