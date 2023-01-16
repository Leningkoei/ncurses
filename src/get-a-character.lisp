;;;; get-character

(declaim (inline getch))
(define-alien-routine getch int)

(defun get-a-character ()
  "void -> int"
  (getch))
