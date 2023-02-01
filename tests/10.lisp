;;;; (require :ncurses)

(defun main ()

  (ncurses:initscr)
  (ncurses:noecho)
  (ncurses:cbreak)

  (ncurses:start-color)

  (ncurses:init-pair 1 ncurses:+color-yellow+ ncurses:+color-black+)
  (ncurses:init-pair 2 ncurses:+color-red+    ncurses:+color-black+)

  (let ((test (logxor ncurses:+a-reverse+ (ncurses:color-pair 1))))

    (ncurses:attron test)

    (ncurses:mvaddch 5 5 (char-int #\a))
    (ncurses:mvaddch 5 6 (char-int #\b))
    (ncurses:mvaddch 5 7 (char-int #\c))
    (ncurses:mvaddch 5 8 (char-int #\d))

    (ncurses:attroff test))

  (let ((test (logxor ncurses:+a-reverse+ (ncurses:color-pair 2))))

    (ncurses:attron test)

    (ncurses:mvaddch 6 5 (char-int #\a))
    (ncurses:mvaddch 6 6 (char-int #\b))
    (ncurses:mvaddch 6 7 (char-int #\c))
    (ncurses:mvaddch 6 8 (char-int #\d))

    (ncurses:attroff test))

  (let ((test (logxor (char-int #\a) ncurses:+a-reverse+ (ncurses:color-pair 1))))

    (ncurses:mvaddch 7 5 test))

  (ncurses:getch)
  (ncurses:endwin))
