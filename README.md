# ncurses

A ncurses interface for common lisp (sbcl).

## c names

### curs_addch

add a character (with attributes) to a curses window, then advance the cursor

- (macro) int addch(const chtype ch);
- int waddch(WINDOW *win, const chtype ch);

- (macro) int mvaddch(int y, int x, const chtype ch);
- (macro) int mvwaddch(WINDOW *win, int y, int x, const chtype ch);


- (macro) int echochar(const chtype ch);
- int wechochar(WINDOW *win, const chtype ch);



### curs_addchstr

add a string of characters (and attributes) to a curses window

- (macro) int addchstr(const chtype *chstr);
- (macro) int addchnstr(const chtype *chstr, int n);

- (macro) int waddchstr(WINDOW *win, const chtype *chstr);
- int waddchnstr(WINDOW *win, const chtype *chstr, int n);


- (macro) int mvaddchstr(int y, int x, const chtype *chstr);
- (macro) int mvaddchnstr(int y, int x, const chtype *chstr, int n);

- (macro) int mvwaddchstr(WINDOW *win, int y, int x, const chtype *chstr);
- (macro) int mvwaddchnstr(WINDOW *win, int y, int x, const chtype *chstr, int n);



### curs_addstr

add a string of characters to a curses window and advance cursor

- (macro) int addstr(const char *str);
- (macro) int addnstr(const char *str, int n);

- (macro) int waddstr(WINDOW *win, const char *str);
- int waddnstr(WINDOW *win, const char *str, int n);


- (macro) int mvaddstr(int y, int x, const char *str);
- (macro) int mvaddnstr(int y, int x, const char *str, int n);

- (macro) int mvwaddstr(WINDOW *win, int y, int x, const char *str);
- (macro) int mvwaddnstr(WINDOW *win, int y, int x, const char *str, int n);



### curs_add_wch

add a complex character and rendition to a curses window, then advance the cursor

- (macro) int add_wch(const cchar_t *wch);
- int wadd_wch(WINDOW *win, const cchar_t *wch);

- (macro) int mvadd_wch(int y, int x, const cchar_t *wch);
- (macro) int mvwadd_wch(WINDOW *win, int y, int x, const cchar_t *wch);


- int echo_wchar(const cchar_t *wch);
- (macro) int wecho_wchar(WINDOW *win, const cchar_t *wch);


### curs_add_wchstr

add an array of complex characters (and attributes) to a curses window

- (macro) int add_wchstr(const cchar_t *wchstr);
- (macro) int add_wchnstr(const cchar_t *wchstr, int n);

- (macro) int wadd_wchstr(WINDOW *win, const cchar_t *wchstr);
- int wadd_wchnstr(WINDOW *win, const cchar_t *wchstr, int n);


- (macro) int mvadd_wchstr(int y, int x, const cchar_t *wchstr);
- (macro) int mvadd_wchnstr(int y, int x, const cchar_t *wchstr, int n);

- (macro) int mvwadd_wchstr(WINDOW *win, int y, int x, const cchar_t *wchstr);
- (macro) int mvwadd_wchnstr(WINDOW *win, int y, int x, const cchar_t *wchstr, int n);



### curs_addwstr

add a string of wide characters to a curses window and advance cursor

- (macro) int addwstr(const wchar_t *wstr);
- (macro) int addnwstr(const wchar_t *wstr, int n);

- (macro) int waddwstr(WINDOW *win, const wchar_t *wstr);
- int waddnwstr(WINDOW *win, const wchar_t *wstr, int n);


- (macro) int mvaddwstr(int y, int x, const wchar_t *wstr);
- (macro) int mvaddnwstr(int y, int x, const wchar_t *wstr, int n);

- (macro) int mvwaddwstr(WINDOW *win, int y, int x, const wchar_t *wstr);
- (macro) int mvwaddnwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);



### curs_attr

curses character and window attribute control

- int attr_get(attr_t *attrs, short *pair, void *opts);
- int wattr_get(WINDOW *win, attr_t *attrs, short *pair, void *opts);

- int attr_set(attr_t *attrs, short *pair, void *opts);
- int wattr_set(WINDOW *win, attr_t *attrs, short *pair, void *opts);


- int attr_off(attr_t *attrs, void *opts);
- int wattr_off(WINDOW *win, attr_t *attrs, void *opts);

- int attr_on(attr_t *attrs, void *opts);
- int wattr_on(WINDOW *win, attr_t *attrs, void *opts);


- (macro) int attroff(int attrs);
- (macro) int wattroff(WINDOW *win, int attrs);

- (macro) int attron(int attrs);
- (macro) int wattron(WINDOW *win, int attrs);

- (macro) int attrset(int attrs);
- (macro) int wattrset(WINDOW *win, int attrs);


- int chgat(int n, attr_t attr, short pair, const void *opts);
- int wchgat(WINDOW *win, int n, attr_t attr, short pair, const void *opts);

- int mvchgat(int y, int x, int n, attr_t attr, short pair, const void *opts);
- int mvwchgat(WINDOW *win, int y, int x, int n, attr_t attr, short pair, const void *opts);


- int color_set(short pair, void *opts);
- int wcolor_set(WINDOW *win, short pair, void *opts);

- (macro) int standend(void);
- int wstandend(WINDOW *win);

- (macro) int standout(void);
- int wstandout(WINDOW *win);


- getattrs



#### video attributes

- A_NORMAL: Noremal display (no highlight).
- A_STANDOUT: Best highlightling mode of the terminal.
- A_UNDERLINE: Underlining.
- A_REVERSE: Reverse video.
- A_BLINK: Blinking.
- A_DIM: Half bright.
- A_BOLD: Extra bright or bold.
- A_PROTECT: Protected mode.
- A_INVIS: Invisible or blank mode.
- A_ALTCHARSET: Alternate character set.
- A_ITALIC: Italics (non-X/Open extension).
- A_CHARTEXT: Bit-mask to extract a character.
- A_COLOR: Bit-mask to extract a color (legacy routines).

- WA_HORIZONTAL: Horizontal highlight.
- WA_LEFT: Left highlight.
- WA_LOW: Low highlight.
- WA_RIGHT: Right highlight.
- WA_TOP: Top highlight.
- WA_VERTICAL: Vertical highlight.



### curs_beep

curses bell and screen flash routines

- int beep(void);

- int flash(void);



### curs_bkgd

curses window background manipulation routines

- (macro) void bkgdset(chtype ch);
- void wbkgdset(WINDOW *win, chtype ch);


- (macro) int bkgd(chtype ch);
- int wbkgd(WINDOW *win, chtype ch);


- chtype getbkgd(WINDOW *win);



### curs_bkgrnd

curses window complex background manipulation routines

- (macro) int bkgrnd(const cchar_t *wch);
- int wbkgrnd(WINDOW *win, const cchar_t *wch);


- (macro) void bkgrndset(const cchar_t *wch);
- void wbkgrndset(WINDOW *win, const cchar_t *wch);


- (macro) int getbkgrnd(cchar_t *wch);
- int wgetbkgrnd(WINDOW *win, cchar_t *wch);



### curs_border

create curses borders, horizontal and vertical

- (macro) int border(chtype ls, chtype rs,
                     chtype ts, chtype bs,
                     chtype tl, chtype tr,
                     chtype bl, chtype br);
- int wborder(WINDOW *win,
              chtype ls, chtype rs,
              chtype ts, chtype bs,
              chtype tl, chtype tr,
              chtype bl, chtype br);


- (macro) int box(WINDOW *win, chtype verch, chtype horch);


- int hline(chtype ch, int n);
- int whline(WINDOW *win, chtype ch, int n);

- int vline(chtype ch, int n);
- int wvline(WINDOW *win, chtype ch, int n);


- int mvhline(int y, int x, chtype ch, int n);
- int mvwhline(WINDOW *win, int y, int x, chtype ch, int n);

- int mvvline(int y, int x, chtype ch, int n);
- int mvwvline(WINDoW *win, int y, int x, chtype ch, int n);




### curs_border_set

create curses borders or lines using complex characters and renditions

- (macro) int border_set(const cchar_t *ls, const cchar_t *rs,
                         const cchar_t *ts, const cchar_t *bs,
                         const cchar_t *tl, const cchar_t *br);
- int wborder_set(WINDOW *win,
                  const cchar_t *ls, const cchar_t *rs,
                  const cchar_t *ts, const cchar_t *bs,
                  const cchar_t *tl, const cchar_t *tr,
                  const cchar_t *bl, const cchar_t *br);


- int box_set(WINDOW *win, const cchar_t *verch, const cchar_t *horch);


- (macro) int hline_set(const cchar_t *wch, int n);
- int whline_set(const cchar_t *wch, int n);

- (macro) int vline_set(const cchar_t *wch, int n);
- int wvline_set(const cchar_t *wch, int n);


- (macro) int mvhline_set(const cchar_t *wch, int n);
- (macro) int mvwhline_set(WINDOW *win, const cchar_t *wch, int n);

- (macro) int mvvline_set(const cchar_t *wch, int n);
- (macro) int mvwvline_set(WINDOW *win, const cchar_t *wch, int n);



### curs_clear

clear all or part of a curses window

- (macro) int erase(void);
- (macro) int werase(WINDOW *win);


- (macro) int clear(void);
- (macro) int wclear(WINDOW *win);


- (macro) int clrtobot(void);
- int wclrtobot(WINDOW *win);


- (macro) int clrtoeol(void);
- int wclrtoeol(WINDOW *win);



### curs_color

curses color manipulation routines

- int start_color(void);


- bool has_colors(void);

- bool can_change_color(void);


- int init_pair(short pair, short f, short b);
- int init_extended_pair(int pair, int f, int b);*

- int init_color(short color, short r, short g, short b);
- int init_extended_color(int color, int r, int g, int b);*


- int color_content(short color, short *r, short *g, short *b);
- int extended_color_content(int color, int *r, int *g, int *b);*

- int pair_content(short pair, short *f, short *b);
- int extended_pair_content(int pair, int *f, int short *b);*


- void reset_color_pairs(void);*


- int COLOR_PAIR(int n);

- PAIR_NUMBER(attrs);


#### colors

- COLOR_BLACK
- COLOR_RED
- COLOR_GREEN
- COLOR_YELLOW
- COLOR_BLUE
- COLOR_MAGENTA
- COLOR_CYAN
- COLOR_WHITE



### curs_delch

delete character under the curses in a curses window

- (macro) int delch(void);
- int wdelch(WINDOW *win);

- (macro) int mvdelch(int y, int x);
- (macro) int mvwdelch(WINDOW *win, int y, int x);



### curs_deleteln

delete and insert lines in a curses window

- int deleteln(void);
- int wdeleteln(WINDOW *win);


- int insdelln(int n);
- (macro) int winsdelln(WINDOW *win);


- int insertln(void);
- int winsertln(WINDOW *win);



### curs_extend

miscellaneous curses extensions

- const char *curses_version(void);*

- int use_extended_names(bool enable);*


### curs_getcchar

- getcchar

- setcchar


### curs_getch

- getch

- has_key*

- mvgetch

- mvwgetch

- ungetch

- wgetch


### curs_getstr

- getnstr

- getstr

- mvgetnstr

- mvgetstr

- mvwgetnstr

- mvwgetstr

- wgetnstr

- wgetstr


### curs_get_wch

- get_wch

- mvget-wch

- mvwdelch

- mvwget_wch

- unget_wch

- wget_wch


### curs_get_wstr

- get_wstr

- getn_wstr

- mvget_wstr

- mvgetn_wstr

- mvwget_wstr

- mvwgetn_wstr

- wget_wstr

- wgetn_wstr


### curs_getyx

- getbegyx

- getmaxyx

- getparyx

- getyx


### curs_in_wch

- in_wch

- mvin_wch

- mvwin_wch

- win_wch


### curs_in_wchstr

- in_wchnstr

- in_wchstr

- mvin_wchnstr

- mvin_wchstr

- mvwin_wchnstr

- mvwin_wchstr

- win_wchnstr

- win_wchstr


### curs_inch

- inch

- mvinch

- mvwinch

- winch

### curs_inchstr

- inchnstr

- inchstr

- mvinchnstr

- mvinchstr

- mvinchnstr

- mvinchstr

- winchnstr

- winchstr


### curs_initscr

- delscreen

- endwin

- initscr

- isendwin

- newterm

- set_term


### curs_inopts

- cbreak

- echo

- halfdelay

- intrflush

- keypad

- meta

- nl

- nocbreak

- nodelay

- noecho

- nonl

- noqiflush

- noraw

- notimeout

- qiflush

- raw

- timeout

- typeahead

- wtimeout


### curs_ins_wch

- ins_wch

- mvins_wch

- mvwins_wch

- wins_wch


### curs_ins_wstr

- ins_nwstr

- ins_wstr

- mvins_nwstr

- mvins_wstr

- mvins_nwstr

- mvwins_wstr

- wins_nwstr

- wins_wstr


### curs_insch

- insch

- mvinsch

- mvwinsch

- winsch


### curs_insstr

- insnstr

- insstr

- mvinsnstr

- mvinsstr

- mvwinsnstr

- mvwinsstr

- winsnstr

- winsstr


### curs_instr

- innstr

- instr

- mvinnstr

- mvinstr

- mvwinnstr

- mvwinstr

- winnstr

- winstr


### curs_inwstr

- innwstr

- inwstr

- mvinnwstr

- mvinwstr

- mvwinnwstr

- mvwinwstr

- winnwstr

- winwstr


### curs_kernel

- curs_set

- def_prog_mode

- def_shell_mode

- getsyx

- napms

- reset_prog_mode

- reset_shell_mode

- resetty

- ripoffline

- savetty

- setsyx


### curs_legacy

- getbegx*

- getbegy*

- getcurx*

- getcury*

- getmaxx*

- getmaxy*

- getparx*

- getpary*


### curs_memleaks*

- exit_curses

- exit_terminfo


### curs_mouse

- getmouse*

- has_mouse*

- mouse_trafo

- mouseinterval

- mousemask

- ungetmouse*

- wenclose

- wmouse_trafo


### curs_move

- move

- wmove


### curs_opaque

- is_cleared*

- is_idcok*

- is_idlok*

- is_immedok*

- is_keypad*

- is_leaveok*

- is_nodelay*

- is_notimeout*

- is_pad*

- is_scrollok*

- is_subwin*

- is_syncok*

- wgetdelay*

- wgetparent*

- wgetscrreg*


### curs_outopts

- clearok

- idcok

- idlok

- immedok

- leaveok

- scrollok

- setscrreg

- wsetscrreg


### curs_overlay

- copywin

- overlay

- overwrite


### curs_pad

- newpad

- pecho_wchar*

- pechochar

- pnoutrefresh

- prefresh

- subpad


### curs_print

- mcprint*


### curs_printw

- mvprintw

- mvwprintw

- printw

- vw_printw

- vwprintw

- wprintw


### curs_refresh

- doupdate

- redrawwin

- refresh

- wnoutrefresh

- wredrawln

- wrefresh


### curs_scanw

- mvscanw

- mvwscanw

- scanw

- vw_scanw

- vwscanw

- wscanw


### curs_scr_dump

- scr_dump

- scr_init

- scr_restore

- scr_set


### curs_scroll

- scrl

- scroll

- wscrl


### curs_slk

- extended_slk_color*

- slk_attr*

- slk_attr_off

- slk_attr_on

- slk_attr_set

- slk_attroff

- slk_attron

- slk_attrset

- slk_clear

- slk_color

- slk_init

- slk_label

- slk_noutrefresh

- slk_refresh

- slk_restore

- slk_set

- slk_touch

- slk_wset


### curs_termattrs

- baudrate

- erasechar

- erasewchar

- has_ic

- has_il

- killchar

- killwchar

- longname

- term_attrs

- termattrs

- termname


### curs_termcap

- tgetent

- tgetflag

- tgetnum

- tgetstr

- tgoto

- tputs


### curs_terminfo

- del_curterm

- mvcur

- putp

- restartterm

- set_curterm

- setupterm

- tigetflag

- tigetnum

- tigetstr

- tiparm*

- tparm

- tputs

- vid_attr

- vid_puts

- vidattr

- vidputs


### curs_touch

- is_linetouched

- is_wintouched

- touchline

- touchwin

- untouchwin

- wtochln


### curs_trace

- curses_trace*

- trace*


### curs_util

- delay_output

- filter

- flushinp

- getwin

- key_name

- keyname

- nofilter

- putwin

- unctrl

- use_env

- use_tioctl

- wunctrl


### curs_window

- delwin

- derwin

- dupwin

- mvderwin

- mvwin

- newwin

- subwin

- syncok

- wcursyncup

- wsyncdown

- wsyncup


### default_colors

- assume_default_colors*

- use_default_colors*


### define_key

- define_key*


### key_defined

- key_defined


### keybound

- keybound


### keyok

- keyok


### legacy_coding

- use_legacy_coding*


### new_pair

- alloc_pair*

- find_pair*

- free_pair*


### resizeterm

- is_term_resized*

- resize_term*

- resizeterm*


### wresize

- wresize*
