;;;; (require :ncurses)

(defun main ()

  (ncurses:initscr)
  (ncurses:noecho)
  (ncurses:cbreak)

  (let ((yx-max-pair (ncurses:getmaxyx (ncurses:get-stdscr))))
    (let ((y-max (car yx-max-pair))
          (x-max (cdr yx-max-pair)))

      (let ((menu (ncurses:newwin 6 (- x-max 12) (- y-max 8) 5))
            (choices (list "walk" "jog" "run")))
        (ncurses:refresh)

        (ncurses:box menu 0 0)
        (ncurses:wrefresh menu)

        (ncurses:keypad menu 't)

        (let ((choice-index
                (loop
                  ;; for time from 0 to 10
                  for time = 0 then (+ time 1)
                  for highlight = 0
                        then (let ((char (ncurses:wgetch menu)))
                               (cond
                                 ((= char (char-int #\e))
                                  (return highlight))
                                 ((= char ncurses:+key-up+)
                                  (if (= highlight 0)
                                      highlight
                                      (- highlight 1)))
                                 ((= char ncurses:+key-down+)
                                  (if (= highlight (- (length choices) 1))
                                      highlight
                                      (+ highlight 1)))
                                 ('t highlight)))
                  do (loop
                       for choice in choices
                       and index = 0 then (+ index 1)
                       do (progn
                            (when (= highlight index)
                              (ncurses:wattron menu ncurses:+a-reverse+))
                            (ncurses:mvwprintw menu (+ index 1) 1 choice)
                            (ncurses:mvwprintw menu (+ index 1) 10
                                               (format nil "~A" time))
                            (when (= highlight index)
                              (ncurses:wattroff menu ncurses:+a-reverse+)))))))
          (ncurses:printw
           (format nil "Your choice is ~A." (nth choice-index choices)))))))

  (ncurses:getch)
  (ncurses:endwin))
