;;;; (require :ncurses)

(defun main ()

  (ncurses:initscr)
  (ncurses:noecho)
  (ncurses:cbreak)

  (let ((yx-pair (ncurses:getyx (ncurses:get-stdscr))))
    (ncurses:printw (format nil "y: ~A, x: ~A~%" (car yx-pair) (cdr yx-pair)))
    (ncurses:refresh))
  (let ((yx-pair (ncurses:getbegyx (ncurses:get-stdscr))))
    (ncurses:printw (format nil "y: ~A, x: ~A~%" (car yx-pair) (cdr yx-pair)))
    (ncurses:refresh))
  (let ((yx-pair (ncurses:getmaxyx (ncurses:get-stdscr))))
    (ncurses:printw (format nil "y: ~A, x: ~A~%" (car yx-pair) (cdr yx-pair)))
    (ncurses:refresh))

  (let ((yx-pair (ncurses:getmaxyx (ncurses:get-stdscr))))
    (let ((y-max (car yx-pair))
          (x-max (cdr yx-pair)))
      (ncurses:mvprintw
       (floor (/ y-max 2))
       (- (floor (/ x-max 2)) 2)
       "Hello")))

  (ncurses:getch)
  (ncurses:endwin))
