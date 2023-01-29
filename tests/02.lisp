;;;; (require :ncurses)

(defun main ()

  (ncurses:initscr)

  (ncurses:printw "Hello World")

  (ncurses:refresh)

  (let ((c (ncurses:getch)))

    (ncurses:printw (format nil "~A" c)))

  (ncurses:getch)

  (ncurses:endwin))
