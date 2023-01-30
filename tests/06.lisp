;;;; (require :ncurses)

(defun main ()

  (ncurses:initscr)

  (ncurses:initscr)
  (ncurses:noecho)
  (ncurses:cbreak)

  (let ((yx-max-pair (ncurses:getmaxyx (ncurses:get-stdscr))))
    (let ((y-max (car yx-max-pair))
          (x-max (cdr yx-max-pair)))

      (let ((input-window (ncurses:newwin 3 (- x-max 5) (- y-max 5) 5)))
        (ncurses:refresh)
        (ncurses:box input-window 0 0)
        (ncurses:wrefresh input-window)

        (ncurses:keypad input-window 't)

        (let ((char (ncurses:wgetch input-window)))

          (when (= char ncurses:+key-up+)
              (ncurses:mvwprintw input-window 1 1 "You pressed up!")
              (ncurses:wrefresh input-window))))))

  (ncurses:getch)
  (ncurses:endwin))
