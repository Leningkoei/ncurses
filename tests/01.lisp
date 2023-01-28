;;;; (require :ncurses)

(defun main (&rest arguments)
  (declare (ignorable arguments))
  
  (ncurses:initscr)
  (ncurses:keypad ncurses:+stdscr+ 't)
  (ncurses:nonl)
  (ncurses:cbreak)
  (ncurses:echo)
  
  (when (ncurses:has-colors)
    (ncurses:start-color)
    
    (ncurses:init-pair 1 ncurses:+color-red+     ncurses:+color-black+)
    (ncurses:init-pair 2 ncurses:+color-green+   ncurses:+color-black+)
    (ncurses:init-pair 3 ncurses:+color-yellow+  ncurses:+color-black+)
    (ncurses:init-pair 4 ncurses:+color-blue+    ncurses:+color-black+)
    (ncurses:init-pair 5 ncurses:+color-cyan+    ncurses:+color-black+)
    (ncurses:init-pair 6 ncurses:+color-magenta+ ncurses:+color-black+)
    (ncurses:init-pair 7 ncurses:+color-white+   ncurses:+color-black+))
  
  (do ((num 0 (+ num 1)))
      (nil)
    (ncurses:getch)
    (ncurses:attrset (ncurses:color-pair (mod num 8))))

  (ncurses:endwin))
