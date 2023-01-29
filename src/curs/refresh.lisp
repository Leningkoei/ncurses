;;;; curs_refresh

(declaim (inline refresh))
(define-alien-routine refresh int
  "void -> int
The `refresh` and `wrefresh` routines (or `wnoutrefresh` and `doupdate`) must be called to get actual output to the terminal, as other routines merely manipulate data structures. The routine `wrefresh` copies the named window to the /physical screen/, taking into account what is already there to do optimizations. The `refresh` routine is the same, using `stdscr` as the default window. Unless `leaveok` has been enabled, the physical cursor of the terminal is left at the location of the cursor for that window.
"
  )

(declaim (inline wrefresh))
(define-alien-routine wrefresh int
  "WINDOW -> int
The `refresh` and `wrefresh` routines (or `wnoutrefresh` and `doupdate`) must be called to get actual output to the terminal, as other routines merely manipulate data structures. The routine `wrefresh` copies the named window to the /physical screen/, taking into account what is already there to do optimizations. The `refresh` routine is the same, using `stdscr` as the default window. Unless `leaveok` has been enabled, the physical cursor of the terminal is left at the location of the cursor for that window.
"
  (win WINDOW))
(declaim (inline wnoutrefresh))
(declaim (inline doupdate))
(declaim (inline redrawwin))
(declaim (inline wredrawln))
