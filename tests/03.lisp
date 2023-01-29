;;;; (require :ncurses)

(defun main ()

  (ncurses:initscr)

  (ncurses:move 10 10)
  (ncurses:printw "Hello World")
  (ncurses:refresh)

  (let ((c (ncurses:getch)))

    (ncurses:move 0 0)
    (ncurses:printw (format nil "~A" c)))

  (ncurses:getch)
  (ncurses:endwin))
