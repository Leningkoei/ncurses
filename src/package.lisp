(defpackage :ncurses
  (:use
   :common-lisp
   :sb-alien)
  (:export
   :get-a-character
   :refresh
   :with-ncurses))
(in-package :ncurses)
