;;;; (require :ncurses)

(defun main ()

  (ncurses:initscr)
  (ncurses:noecho)
  (ncurses:cbreak)

  ;; (ncurses:halfdelay 5)
  (ncurses:timeout 500)

  (loop for character = -1
          then (ncurses:getch)
        when (= character (char-int #\q))
          do (return nil)
        do (ncurses:printw (format nil "~A~%" character)))

  (ncurses:endwin))
