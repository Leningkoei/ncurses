(defun main ()
  (ncurses:with-ncurses
      (ncurses:refresh)
    (ncurses:get-a-character)
    'done))
