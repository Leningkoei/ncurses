;;;; (require :ncurses)

(defun main ()

  (ncurses:initscr)
  (ncurses:noecho)
  (ncurses:raw)

  (loop for character = (ncurses:getch)
          then (ncurses:getch)
        do (ncurses:mvprintw
            1 0
            (format nil "key name: ~A - ~A~%" (ncurses:keyname character) character))
        when (= character (ncurses:ctrl #\b))
          do (ncurses:mvprintw 0 0 "Detected Ctrl+b!")
        when (= character (ncurses:ctrl #\B))
          do (ncurses:mvprintw 0 0 "Detected Ctrl+B!")
        when (= character (ncurses:ctrl #\c))
          do (return nil))

  (ncurses:endwin))
