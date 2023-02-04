(in-package :common-lisp-user)
(provide :ncurses)
(defpackage :ncurses
  (:use
   :common-lisp
   :sb-alien)
  (:export

   ;; curs_variables
   :get-color-pairs
   :get-colors
   :get-cols
   :get-escdelay
   :get-lines
   :get-tabsize
   :get-curscr
   :get-newscr
   :get-stdscr

   ;; curs_addch
   :addch
   :waddch
   :mvaddch
   :mvaddch
   :mvwaddch
   :echochar
   :wechochar

   ;; curs_attr
   :attr-get
   :wattr-get
   :attr-set
   :wattr-set
   :attr-off
   :wattr-off
   :attr-on
   :wattr-on
   :attroff
   :wattroff
   :attron
   :wattron
   :attrset
   :wattrset
   :chgat
   :wchgat
   :mvchgat
   :mvwchgat
   :color-set
   :wcolor-set
   :standend
   :wstandend
   :standout
   :wstandout
   :+a-normal+
   :+a-standout+
   :+a-underline+
   :+a-reverse+
   :ctrl

   ;; curs_border
   :border
   :wborder
   :box
   :hline
   :whline
   :vline
   :wvline
   :mvhline
   :mvwhline
   :mvvline
   :mvwvline

   ;; curs_color
   :start-color
   :has-colors
   :can-change-color
   :init-pair
   :init-color
   :init-extended-pair
   :init-extended-color
   :color-content
   :pair-content
   :extended-color-content
   :extended-pair-content
   :reset-color-pairs
   :color-pair
   :pair-number
   :+color-black+
   :+color-red+
   :+color-green+
   :+color-yellow+
   :+color-blue+
   :+color-cyan+
   :+color-magenta+
   :+color-white+

   ;; curs_getch
   :getch
   :wgetch
   :mvgetch
   :mvwgetch
   :ungetch
   :has-key
   :+key-break+
   :+key-down+
   :+key-up+
   :+key-left+
   :+key-right+

   ;; curs_getyx
   :getyx
   :getparyx
   :getbegyx
   :getmaxyx

   ;; curs_initscr
   :initscr
   :endwin

   ;; curs_inopts
   :cbreak
   :nocbreak
   :echo
   :noecho
   :intrflush
   :keypad
   :meta
   :nodelay
   :notimeout
   :nl
   :nonl
   :raw
   :noraw
   :qiflush
   :noqiflush
   :halfdelay
   :timeout
   :wtimeout
   :typeahead

   ;; curs_kernel
   :def-prog-mode
   :def-shell-mode
   :reset-prog-mode
   :reset-shell-mode
   :resetty
   :savetty
   :getsyx
   :setsyx
   :ripoffline
   :curs-set
   :napms

   ;; curs_move
   :move
   :wmove

   ;; curs_printw
   :printw
   :wprintw
   :mvprintw
   :mvwprintw
   :vw_printw
   :vwprintw

   ;; curs_refresh
   :refresh
   :wrefresh
   :wnoutrefresh
   :doupdate
   :redrawwin
   :wredrawln

   ;; curs_util
   :unctrl
   :wunctrl
   :keyname
   :key-name
   :filter
   :nofilter
   :use-env
   :use-tioctl
   :putwin
   :getwin
   :delay-output
   :flushinp

   ;; curs_window
   :newwin
   :delwin
   :mvwin
   :subwin
   :derwin
   :mvderwin
   :dupwin
   :wsyncup
   :syncok
   :wcursyncup
   :wsyncdown

   ))
