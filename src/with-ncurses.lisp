;;;; with-ncurses

(declaim (inline initscr))
(define-alien-routine initscr void
  "")
(defun init-screen ()
  (initscr))

(declaim (inline endwin))
(define-alien-routine endwin void
  "")
(defun end-window ()
  (endwin))

(defmacro with-ncurses (refresh &body body)
  `(progn
     (init-screen)
     ,refresh
     ,@body
     (end-window)))
