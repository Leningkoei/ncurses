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

get a wide character string and rendition from a cchar_t or set a cchar_t from a wide-character string

- int getcchar(const cchar_t *wcval,
               wchar_t       *wch,
               attr_t        *attrs,
               short         *color_pair,
               void          *opts);


- int setcchar(cchar_t       *wcval,
               const wchar_t *wch,
               const attr_t  attrs,
               short         pair,
               const void    *opts);



### curs_getch

get (or push back) characters from curses terminal keyboard

- (macro) int getch(void);
- int wgetch(WINDOW *win);


- (macro) int mvgetch(int y, int x);
- (macro) int mvwgetch(WINDOW *win, int y, int x);


- int ungetch(int ch);


- int has_key(int ch);*



### curs_getstr

accept character string from curses terminal keyboard

- (macro) int getstr(char *str);
- int getnstr(char *str);

- int wgetstr(char *str);
- int wgetnstr(char *str);


- (macro) int mvgetstr(char *str);
- int mvgetnstr(char *str);

- (macro) int mvwgetstr(char *str);
- int mvwgetnstr(char *str);



### curs_get_wch

get (or push back) a wide character from curses terminal keyboard

- (macro) int get_wch(wint_t *wch);
- int wget_wch(WINDOW *win, wint_t *wch);

- (macro) int mvget-wch(int y, int x, wint_t *wch);
- (macro) int mvwget_wch(WINDOW *win, int y, int x, wint_t *wch);


- int unget_wch(const wchar_t wch);
- mvwdelch



### curs_get_wstr

get an array of wide characters from a curses terminal keyboard

- (macro) int get_wstr(wint_t *wstr);
- (macro) int getn_wstr(wint_t *wstr, int n);

- (macro) int wget_wstr(WINDOW *win, wint_t *wstr);
- int wgetn_wstr(WINDOW *win, wint_t *wstr, int n);


- (macro) int mvget_wstr(int y, int x, wint_t *wstr);
- (macro) int mvgetn_wstr(int y, int x, wint_t *wstr, int n);

- (macro) int mvwget_wstr(WINDOW *win, int y, int x, wint_t *wstr);
- (macro) int mvwgetn_wstr(WINDOW *win, int y, int x, wint_t *wstr, int n);


### curs_getyx

get curses cursor and window coordinates

- (macro) void getyx(WINDOW *win, int y, int x);
- (macro) void getparyx(WINDOW *win, int y, int x);
- (macro) void getbegyx(WINDOW *win, int y, int x);
- (macro) void getmaxyx(WINDOW *win, int y, int x);



### curs_in_wch

extract a complex character and rendition from a window

- (macro) int in_wch(cchar_t *wcval);
- (macro) int win_wch(WINDOW *win, cchar_t *wcval);


- (macro) int mvin_wch(int y, int x, cchar_t *wcval);
- (macro) int mvwin_wch(WINDOW *win, int y, int x, cchar_t *wcval);



### curs_in_wchstr

get an array of complex characters and renditions from a curses window

- (macro) int in_wchstr(cchar_t *wchstr);
- int in_wchnstr(cchar_t *wchstr, int n);

- (macro) int win_wchstr(WINDOW *win, cchar_t *wchstr);
- (macro) int win_wchnstr(WINDOW *win, cchar_t *wchstr, int n);


- (macro) int mvin_wchstr(cchar_t *wchstr);
- (macro) int mvin_wchnstr(cchar_t *wchstr, int n);

- (macro) int mvwin_wchstr(WINDOW *win, int y, int x, cchar_t *wchstr);
- (macro) int mvwin_wchnstr(WINDOW *win, int y, int x, cchar_t *wchstr, int n);


### curs_inch

get a character and attributes from a curses window

- (macro) chtype inch(void);
- (macro) chtype winch(WINDOW *win);


- (macro) chtype mvinch(int y, int x);
- (macro) chtype mvwinch(WINDoW *win, int y, int x);



### curs_inchstr

get a string of characters (and attributes) from a curses window

- (macro) int inchstr(ctype *chstr);
- (macro) int inchnstr(ctype *chstr, int n);

- (macro) int winchstr(WINDOW *win, ctype *chstr);
- int winchnstr(WINDOW *win, ctype *chstr, int n);


- (macro) int mvinchstr(ctype *chstr);
- (macro) int mvinchnstr(ctype *chstr, int n);

- (macro) int mvwinchstr(WINDOW *win, int y, int x, ctype *chstr);
- (macro) int mvwinchnstr(WINDOW *win, int y, int x, ctype *chstr, int n);



### curs_initscr

curses screen initialization and manipulation routines

- WINDOW *initscr(void);
- int endwin(void);


- bool isendwin(void);


- SCREEN *newterm(const char *type, FILE *outfd, FILE *infd);
- SCREEN *set_term(SCREEN *new);
- void delscreen(SCREEN *sp);



### curs_inopts

- int cbreak(void);
- int nocbreak(void);


- (macro) int echo(void);
- (macro) int noecho(void);


- (macro) int intrflush(WINDOW *win, bool bf);
- int keypad(WINDOW *win, bool bf);
- (macro) int meta(WINDOW *win, bool bf);
- (macro) int nodelay(WINDOW *win, bool bf);
- (macro) int notimeout(WINDOW *win, bool bf);


- (macro) int nl(void);
- (macro) int nonl(void);


- int raw(void);
- int noraw(void);


- (macro) void qiflush(void);
- (macro) void noqiflush(void);


- (macro) int halfdelay(int tenths);
- (macro) void timeout(int delay);
- (macro) void wtimeout(WINDOW *win, int delay);


- int typeahead(int fd);



### curs_ins_wch

insert a complex character and rendition into a window

- int ins_wch(const cchar_t *wch);
- int wins_wch(WINDOW *win, const cchar_t *wch);


- int mvins_wch(int y, int x, const cchar_t *wch);
- int mvwins_wch(WINDOW *win, int y, int x, const cchar_t *wch);



### curs_ins_wstr

insert a wide-character string into a curses window

- (macro) int ins_wstr(const wchar_t *wstr);
- (macro) int ins_nwstr(const wchar_t *wstr, int n);

- (macro) int wins_wstr(WINDOW *win, const wchar_t *wstr);
- int wins_nwstr(WINDOW *win, const wchar_t *wstr, int n);


- (macro) int mvins_wstr(int y, int x, const wchar_t *wstr);
- (macro) int mvins_nwstr(int y, int x, const wchar_t *wstr, int n);

- (macro) int mvwins_wstr(WINDOW *win, int y, int x, const wchar_t *wstr);
- (macro) int mvwins_nwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);



### curs_insch

insert a character before curses in a curses window

- (macro) int insch(chtype ch);
- int winsch(WINDOW *win, chtype ch);


- (macro) int mvinsch(int y, int x, chtype ch);
- (macro) int mvwinsch(WINDOW *win, int y, int x, chtype ch);



### curs_insstr

insert string before cursor in a curses window

- (macro) int insstr(const char *str);
- (macro) int insnstr(const char *str, int n);

- (macro) int winsstr(WINDOW *win, const char *str);
- int winsnstr(WINDOW *win, const char *str, int n);


- (macro) int mvinsstr(int y, int x, const char *str);
- (macro) int mvinsnstr(int y, int x, const char *str, int n);

- (macro) int mvwinsstr(WINDOW *win, int y, int x, const char *str);
- (macro) int mvwinsnstr(WINDOW *win, int y, int x, const char *str, int n);



### curs_instr

get a string of characters from a curses window

- (macro) int instr(char *str);
- (macro) int innstr(char *str, int n);

- (macro) int winstr(WINDOW *win, char *str);
- int winnstr(WINDOW *win, char *str, int n);


- (macro) int mvwinstr(int y, int x, char *str);
- (macro) int mvwinnstr(int y, int x, char *str, int n);

- (macro) int mvinstr(WINDOW *win, int y, int x, char *str);
- (macro) int mvinnstr(WINDOW *win, int y, int x, char *str, int n);




### curs_inwstr

get a string of wchar_t character from a curses window

- (macro) int inwstr(wchar_t *wstr);
- (macro) int innwstr(wchar_t *wstr, int n);

- (macro) int winwstr(WINDOW *win, wchar_t *wstr);
- int winnwstr(WINDOW *win, wchar_t *wstr, int n);


- (macro) int mvinwstr(int y, int x, wchar_t *wstr);
- (macro) int mvinnwstr(int y, int x, wchar_t *wstr, int n);

- (macro) int mvwinwstr(WINDOW *win, int y, int x, wchar_t *wstr);
- (macro) int mvwinnwstr(WINDOW *win, int y, int x, wchar_t *wstr, int n);



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
