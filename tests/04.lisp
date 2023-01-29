;;;; (require :ncurses)

(defun main ()

  (ncurses:initscr)

  (let ((window (ncurses:newwin 10 20 10 10)))
    (ncurses:refresh)

    (ncurses:box window 0 0)
    ;; (ncurses:wrefresh window)

    (ncurses:wprintw window "this is my box")
    (ncurses:wrefresh window))

  (ncurses:getch)
  (ncurses:endwin))
