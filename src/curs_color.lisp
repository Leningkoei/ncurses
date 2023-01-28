;;;; curs_color

(in-package :ncurses)

(declaim (inline start-color))
(define-alien-routine start-color int
  "The `start-color` routine requires no arguments. It must be called if the programmer wants to use colors, and before any other color manipulation routine is called. It is good practice to call this routine right after `initscr`.")

(declaim (inline has-colors))
(define-alien-routine has-colors boolean
  "The has-colors routine requires no arguments. It returns `TRUE` if the terminal can manipulate colors; otherwise, it returns `FALSE`. This routine facilitates writing terminal-independent programs. For example, a programmer can use it to decide whether to use color or some other video attribute.")

(declaim (inline can-change-color))

(declaim (inline init-pair))
(define-alien-routine init-pair int
  "The `init-pair` routine changes the definition of a color-pair. It takes three arguments: the number of the color-pair to be changed, the foreground color number, and the background color number."
  (pair short)
  (f    short)
  (b    short))

(declaim (inline init-color))
(define-alien-routine init-color int
  "The `init-color` routine changes the definition of a color. It takes four arguments: the number of the color to be changed followed by three RGB values."
  (color short)
  (r     short)
  (g     short)
  (b     short))

(declaim (inline init-extended-pair))

(declaim (inline init-extended-color))

(declaim (inline color-content))


(declaim (inline pair-content))

(declaim (inline extended-color-content))

(declaim (inline extended-pair-content))

(declaim (inline reset-color-pairs))

(declaim (inline color-pair))
(define-alien-routine color-pair int
  "Its inverse `COLOR_PAIR(n)` converts a color pair number to an attribute. Attributes can hold color pairs in the range 0 to 255. If you need a color pair larger than that, you must use functions such as `attr-set` (which pass the color pair as a separate parameter) rather than the legacy functions such as `attrset`."
  (n int))

(declaim (inline pair-number))

(define-alien-variable color-black   short)
(define-alien-variable color-red     short)
(define-alien-variable color-green   short)
(define-alien-variable color-yellow  short)
(define-alien-variable color-blue    short)
(define-alien-variable color-cyan    short)
(define-alien-variable color-magenta short)
(define-alien-variable color-white   short)
(defconstant +color-black+   color-black)
(defconstant +color-red+     color-red)
(defconstant +color-green+   color-green)
(defconstant +color-yellow+  color-yellow)
(defconstant +color-blue+    color-blue)
(defconstant +color-cyan+    color-cyan)
(defconstant +color-magenta+ color-black)
(defconstant +color-white+   color-white)
