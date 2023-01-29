;;;; curs_inopts

(in-package :ncurses)

(declaim (inline cbreak))
(define-alien-routine cbreak int
  "Normally, the tty driver buffers typed characters until a newline or carriage return is typed. The `cbreak` routine disables line buffering and erase/kill character-processing (interrupt and flow control characters are unaffected), making characters typed by the user immediately available to the program. The `nocbreak` routine returns the terminal to normal (cooked) mode.")

(declaim (inline nocbreak))
(define-alien-routine nocbreak int
  "Normally, the tty driver buffers typed characters until a newline or carriage return is typed. The `cbreak` routine disables line buffering and erase/kill character-processing (interrupt and flow control characters are unaffected), making characters typed by the user immediately available to the program. The `nocbreak` routine returns the terminal to normal (cooked) mode.")

(declaim (inline echo))
(define-alien-routine echo int
  "The `echo` and `noecho` routines control whether characters typed by the user are echoed by `getch` as they are typed. Echoing by the tty driver is always disabled, but initially `getch` is in echo mode, so characters typed are echoed. Authors of most interactive programs prefer to do their own echoing in a controlled area of the screen, or not to echo at all, so they disable echoing by calling `noecho`.")

(declaim (inline noecho))
(define-alien-routine noecho int
  "The `echo` and `noecho` routines control whether characters typed by the user are echoed by `getch` as they are typed. Echoing by the tty driver is always disabled, but initially `getch` is in echo mode, so characters typed are echoed. Authors of most interactive programs prefer to do their own echoing in a controlled area of the screen, or not to echo at all, so they disable echoing by calling `noecho`.")

(declaim (inline intrflush))
(define-alien-routine intrflush int
  ""
  (win WINDOW)
  (bf boolean))

(declaim (inline keypad))
(define-alien-routine keypad int
  "The `keypad` option enables the keypad of the user's terminal. If enabled (bf is `TRUE`), the user can press a function key (such as an arrow key) and `wgetch` returns a single value representing the function key, as in `KEY_LEFT`. If disabled (bf is `FALSE`), `curses` does not treat function keys specially and the program has to interpret the escape sequences itself. If the keypad in the terminal can be turned on (made to transmit) and off (made to work locally), turning on this option causes the terminal keypad to be turned on when `wgetch` is called. The default value for keypad is FALSE."
  (win WINDOW)
  (bf boolean))

(declaim (inline meta))
(define-alien-routine meta int
  ""
  (win WINDOW)
  (bf boolean))

(declaim (inline nodelay))
(define-alien-routine nodelay int
  ""
  (win WINDOW)
  (bf boolean))

(declaim (inline notimeout))
(define-alien-routine notimeout int
  ""
  (win WINDOW)
  (bf boolean))

(declaim (inline nl))
(define-alien-routine nl int
  "The `nl` and `nonl` routines control whether the underlying display device translates the return key into newline on input.")

(declaim (inline nonl))
(define-alien-routine nonl int
  "The `nl` and `nonl` routines control whether the underlying display device translates the return key into newline on input.")

(declaim (inline raw))
(define-alien-routine raw int
  "")

(declaim (inline noraw))
(define-alien-routine noraw int
  "")

(declaim (inline qiflush))
(define-alien-routine qiflush int
  "")

(declaim (inline noqiflush))
(define-alien-routine noqiflush int
  "")

(declaim (inline halfdelay))
(define-alien-routine halfdelay int
  ""
  (tenths int))

(declaim (inline timeout))
(define-alien-routine timeout void
  ""
  (delay int))

(declaim (inline wtimeout))
(define-alien-routine wtimeout void
  ""
  (win WINDOW)
  (delay int))

(declaim (inline typeahead))
(define-alien-routine typeahead int
  ""
  (fd int))
