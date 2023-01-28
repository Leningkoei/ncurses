# c names

## curs_variables

curses global variables

- int COLOR_PAIRS;

- int COLORS;

- int COLS;

- int ESCDELAY;

- int LINES;

- int TABSIZE;

- WINDOW *curscr;

- WINDOW *newscr;
  This implementation of curses uses a special window `curses` to record its updates to the terminal screen.
  This is referred to as the "physical screen" in the `curs_refresh` and `curs_outopts` manual pages.

- WINDOW *stdscr;

## curs_addch

add a character (with attributes) to a curses window, then advance the cursor

- (macro) int addch(const chtype ch);
- int waddch(WINDOW *win, const chtype ch);

- (macro) int mvaddch(int y, int x, const chtype ch);
- (macro) int mvwaddch(WINDOW *win, int y, int x, const chtype ch);


- (macro) int echochar(const chtype ch);
- int wechochar(WINDOW *win, const chtype ch);



## curs_addchstr

add a string of characters (and attributes) to a curses window

- (macro) int addchstr(const chtype *chstr);
- (macro) int addchnstr(const chtype *chstr, int n);

- (macro) int waddchstr(WINDOW *win, const chtype *chstr);
- int waddchnstr(WINDOW *win, const chtype *chstr, int n);


- (macro) int mvaddchstr(int y, int x, const chtype *chstr);
- (macro) int mvaddchnstr(int y, int x, const chtype *chstr, int n);

- (macro) int mvwaddchstr(WINDOW *win, int y, int x, const chtype *chstr);
- (macro) int mvwaddchnstr(WINDOW *win, int y, int x, const chtype *chstr, int n);



## curs_addstr

add a string of characters to a curses window and advance cursor

- (macro) int addstr(const char *str);
- (macro) int addnstr(const char *str, int n);

- (macro) int waddstr(WINDOW *win, const char *str);
- int waddnstr(WINDOW *win, const char *str, int n);


- (macro) int mvaddstr(int y, int x, const char *str);
- (macro) int mvaddnstr(int y, int x, const char *str, int n);

- (macro) int mvwaddstr(WINDOW *win, int y, int x, const char *str);
- (macro) int mvwaddnstr(WINDOW *win, int y, int x, const char *str, int n);



## curs_add_wch

add a complex character and rendition to a curses window, then advance the cursor

- (macro) int add_wch(const cchar_t *wch);
- int wadd_wch(WINDOW *win, const cchar_t *wch);

- (macro) int mvadd_wch(int y, int x, const cchar_t *wch);
- (macro) int mvwadd_wch(WINDOW *win, int y, int x, const cchar_t *wch);


- int echo_wchar(const cchar_t *wch);
- (macro) int wecho_wchar(WINDOW *win, const cchar_t *wch);


## curs_add_wchstr

add an array of complex characters (and attributes) to a curses window

- (macro) int add_wchstr(const cchar_t *wchstr);
- (macro) int add_wchnstr(const cchar_t *wchstr, int n);

- (macro) int wadd_wchstr(WINDOW *win, const cchar_t *wchstr);
- int wadd_wchnstr(WINDOW *win, const cchar_t *wchstr, int n);


- (macro) int mvadd_wchstr(int y, int x, const cchar_t *wchstr);
- (macro) int mvadd_wchnstr(int y, int x, const cchar_t *wchstr, int n);

- (macro) int mvwadd_wchstr(WINDOW *win, int y, int x, const cchar_t *wchstr);
- (macro) int mvwadd_wchnstr(WINDOW *win, int y, int x, const cchar_t *wchstr, int n);



## curs_addwstr

add a string of wide characters to a curses window and advance cursor

- (macro) int addwstr(const wchar_t *wstr);
- (macro) int addnwstr(const wchar_t *wstr, int n);

- (macro) int waddwstr(WINDOW *win, const wchar_t *wstr);
- int waddnwstr(WINDOW *win, const wchar_t *wstr, int n);


- (macro) int mvaddwstr(int y, int x, const wchar_t *wstr);
- (macro) int mvaddnwstr(int y, int x, const wchar_t *wstr, int n);

- (macro) int mvwaddwstr(WINDOW *win, int y, int x, const wchar_t *wstr);
- (macro) int mvwaddnwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);



## curs_attr

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


### video attributes

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



## curs_beep

curses bell and screen flash routines

- int beep(void);

- int flash(void);



## curs_bkgd

curses window background manipulation routines

- (macro) void bkgdset(chtype ch);
- void wbkgdset(WINDOW *win, chtype ch);


- (macro) int bkgd(chtype ch);
- int wbkgd(WINDOW *win, chtype ch);


- chtype getbkgd(WINDOW *win);



## curs_bkgrnd

curses window complex background manipulation routines

- (macro) int bkgrnd(const cchar_t *wch);
- int wbkgrnd(WINDOW *win, const cchar_t *wch);


- (macro) void bkgrndset(const cchar_t *wch);
- void wbkgrndset(WINDOW *win, const cchar_t *wch);


- (macro) int getbkgrnd(cchar_t *wch);
- int wgetbkgrnd(WINDOW *win, cchar_t *wch);



## curs_border

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




## curs_border_set

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



## curs_clear

clear all or part of a curses window

- (macro) int erase(void);
- (macro) int werase(WINDOW *win);


- (macro) int clear(void);
- (macro) int wclear(WINDOW *win);


- (macro) int clrtobot(void);
- int wclrtobot(WINDOW *win);


- (macro) int clrtoeol(void);
- int wclrtoeol(WINDOW *win);



## curs_color

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
  Its inverse COLOR_PAIR(n) converts a color pair number to an attribute.
  Attributes can hold pairs in the range 0 to 255.

- PAIR_NUMBER(attrs);
  PAIR_NUMBER(attrs) extracts the color value from its attrs parameter and returns it as a color pair number.


### colors

- COLOR_BLACK
- COLOR_RED
- COLOR_GREEN
- COLOR_YELLOW
- COLOR_BLUE
- COLOR_MAGENTA
- COLOR_CYAN
- COLOR_WHITE



## curs_delch

delete character under the curses in a curses window

- (macro) int delch(void);
- int wdelch(WINDOW *win);

- (macro) int mvdelch(int y, int x);
- (macro) int mvwdelch(WINDOW *win, int y, int x);



## curs_deleteln

delete and insert lines in a curses window

- int deleteln(void);
- int wdeleteln(WINDOW *win);


- int insdelln(int n);
- (macro) int winsdelln(WINDOW *win);


- int insertln(void);
- int winsertln(WINDOW *win);



## curs_extend

miscellaneous curses extensions

- const char *curses_version(void);*

- int use_extended_names(bool enable);*


## curs_getcchar

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



## curs_getch

get (or push back) characters from curses terminal keyboard

- (macro) int getch(void);
- int wgetch(WINDOW *win);


- (macro) int mvgetch(int y, int x);
- (macro) int mvwgetch(WINDOW *win, int y, int x);


- int ungetch(int ch);


- int has_key(int ch);*



## curs_getstr

accept character string from curses terminal keyboard

- (macro) int getstr(char *str);
- int getnstr(char *str);

- int wgetstr(char *str);
- int wgetnstr(char *str);


- (macro) int mvgetstr(char *str);
- int mvgetnstr(char *str);

- (macro) int mvwgetstr(char *str);
- int mvwgetnstr(char *str);



## curs_get_wch

get (or push back) a wide character from curses terminal keyboard

- (macro) int get_wch(wint_t *wch);
- int wget_wch(WINDOW *win, wint_t *wch);

- (macro) int mvget-wch(int y, int x, wint_t *wch);
- (macro) int mvwget_wch(WINDOW *win, int y, int x, wint_t *wch);


- int unget_wch(const wchar_t wch);
- mvwdelch



## curs_get_wstr

get an array of wide characters from a curses terminal keyboard

- (macro) int get_wstr(wint_t *wstr);
- (macro) int getn_wstr(wint_t *wstr, int n);

- (macro) int wget_wstr(WINDOW *win, wint_t *wstr);
- int wgetn_wstr(WINDOW *win, wint_t *wstr, int n);


- (macro) int mvget_wstr(int y, int x, wint_t *wstr);
- (macro) int mvgetn_wstr(int y, int x, wint_t *wstr, int n);

- (macro) int mvwget_wstr(WINDOW *win, int y, int x, wint_t *wstr);
- (macro) int mvwgetn_wstr(WINDOW *win, int y, int x, wint_t *wstr, int n);


## curs_getyx

get curses cursor and window coordinates

- (macro) void getyx(WINDOW *win, int y, int x);
- (macro) void getparyx(WINDOW *win, int y, int x);
- (macro) void getbegyx(WINDOW *win, int y, int x);
- (macro) void getmaxyx(WINDOW *win, int y, int x);



## curs_in_wch

extract a complex character and rendition from a window

- (macro) int in_wch(cchar_t *wcval);
- (macro) int win_wch(WINDOW *win, cchar_t *wcval);


- (macro) int mvin_wch(int y, int x, cchar_t *wcval);
- (macro) int mvwin_wch(WINDOW *win, int y, int x, cchar_t *wcval);



## curs_in_wchstr

get an array of complex characters and renditions from a curses window

- (macro) int in_wchstr(cchar_t *wchstr);
- int in_wchnstr(cchar_t *wchstr, int n);

- (macro) int win_wchstr(WINDOW *win, cchar_t *wchstr);
- (macro) int win_wchnstr(WINDOW *win, cchar_t *wchstr, int n);


- (macro) int mvin_wchstr(cchar_t *wchstr);
- (macro) int mvin_wchnstr(cchar_t *wchstr, int n);

- (macro) int mvwin_wchstr(WINDOW *win, int y, int x, cchar_t *wchstr);
- (macro) int mvwin_wchnstr(WINDOW *win, int y, int x, cchar_t *wchstr, int n);


## curs_inch

get a character and attributes from a curses window

- (macro) chtype inch(void);
- (macro) chtype winch(WINDOW *win);


- (macro) chtype mvinch(int y, int x);
- (macro) chtype mvwinch(WINDoW *win, int y, int x);



## curs_inchstr

get a string of characters (and attributes) from a curses window

- (macro) int inchstr(ctype *chstr);
- (macro) int inchnstr(ctype *chstr, int n);

- (macro) int winchstr(WINDOW *win, ctype *chstr);
- int winchnstr(WINDOW *win, ctype *chstr, int n);


- (macro) int mvinchstr(ctype *chstr);
- (macro) int mvinchnstr(ctype *chstr, int n);

- (macro) int mvwinchstr(WINDOW *win, int y, int x, ctype *chstr);
- (macro) int mvwinchnstr(WINDOW *win, int y, int x, ctype *chstr, int n);



## curs_initscr

curses screen initialization and manipulation routines

- WINDOW *initscr(void);
- int endwin(void);


- bool isendwin(void);


- SCREEN *newterm(const char *type, FILE *outfd, FILE *infd);
- SCREEN *set_term(SCREEN *new);
- void delscreen(SCREEN *sp);



## curs_inopts

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



## curs_ins_wch

insert a complex character and rendition into a window

- int ins_wch(const cchar_t *wch);
- int wins_wch(WINDOW *win, const cchar_t *wch);


- int mvins_wch(int y, int x, const cchar_t *wch);
- int mvwins_wch(WINDOW *win, int y, int x, const cchar_t *wch);



## curs_ins_wstr

insert a wide-character string into a curses window

- (macro) int ins_wstr(const wchar_t *wstr);
- (macro) int ins_nwstr(const wchar_t *wstr, int n);

- (macro) int wins_wstr(WINDOW *win, const wchar_t *wstr);
- int wins_nwstr(WINDOW *win, const wchar_t *wstr, int n);


- (macro) int mvins_wstr(int y, int x, const wchar_t *wstr);
- (macro) int mvins_nwstr(int y, int x, const wchar_t *wstr, int n);

- (macro) int mvwins_wstr(WINDOW *win, int y, int x, const wchar_t *wstr);
- (macro) int mvwins_nwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);



## curs_insch

insert a character before curses in a curses window

- (macro) int insch(chtype ch);
- int winsch(WINDOW *win, chtype ch);


- (macro) int mvinsch(int y, int x, chtype ch);
- (macro) int mvwinsch(WINDOW *win, int y, int x, chtype ch);



## curs_insstr

insert string before cursor in a curses window

- (macro) int insstr(const char *str);
- (macro) int insnstr(const char *str, int n);

- (macro) int winsstr(WINDOW *win, const char *str);
- int winsnstr(WINDOW *win, const char *str, int n);


- (macro) int mvinsstr(int y, int x, const char *str);
- (macro) int mvinsnstr(int y, int x, const char *str, int n);

- (macro) int mvwinsstr(WINDOW *win, int y, int x, const char *str);
- (macro) int mvwinsnstr(WINDOW *win, int y, int x, const char *str, int n);



## curs_instr

get a string of characters from a curses window

- (macro) int instr(char *str);
- (macro) int innstr(char *str, int n);

- (macro) int winstr(WINDOW *win, char *str);
- int winnstr(WINDOW *win, char *str, int n);


- (macro) int mvwinstr(int y, int x, char *str);
- (macro) int mvwinnstr(int y, int x, char *str, int n);

- (macro) int mvinstr(WINDOW *win, int y, int x, char *str);
- (macro) int mvinnstr(WINDOW *win, int y, int x, char *str, int n);




## curs_inwstr

get a string of wchar_t character from a curses window

- (macro) int inwstr(wchar_t *wstr);
- (macro) int innwstr(wchar_t *wstr, int n);

- (macro) int winwstr(WINDOW *win, wchar_t *wstr);
- int winnwstr(WINDOW *win, wchar_t *wstr, int n);


- (macro) int mvinwstr(int y, int x, wchar_t *wstr);
- (macro) int mvinnwstr(int y, int x, wchar_t *wstr, int n);

- (macro) int mvwinwstr(WINDOW *win, int y, int x, wchar_t *wstr);
- (macro) int mvwinnwstr(WINDOW *win, int y, int x, wchar_t *wstr, int n);



## curs_kernel

low-level curses routines

- int def_prog_mode(void);
- int def_shell_mode(void);


- int reset_prog_mode(void);
- int reset_shell_mode(void);


- int resetty(void);
- int savetty(void);


- (macro) void getsyx(int y, int x);
- void setsyx(int y, int x);


- int ripoffline(int line, int (*init)(WINDOW *, int));

- int curs_set(int visibility);

- int napms(int ms);



## curs_legacy*

get curses cursor and window coordinates, attributes

- int getattrs(const WINDOW *win);


- int getbegx(const WINDOW *win);
- int getbegy(const WINDOW *win);


- int getcurx(const WINDOW *win);
- int getcury(const WINDOW *win);


- int getmaxx(const WINDOW *win);
- int getmaxy(const WINDOW *win);


- int getparx(const WINDOW *win);
- int getpary(const WINDOW *win);


## curs_memleaks*

curses memory-leak checking

- void exit_curses(int code);


- #include <term.h> void exit_terminfo(int code);



## curs_mouse(todo)

mouse interface through curses

- getmouse*

- has_mouse*

- mouse_trafo

- mouseinterval

- mousemask

- ungetmouse*

- wenclose

- wmouse_trafo


## curs_move

move curses window cursor

- (macro) int move(int y, int x);

- int wmove(WINDOW *win, int y, int x);


## curs_opaque

curses window properties

- bool is_cleared(const WINDOW *win);*

- bool is_idcok(const WINDOW *win);*

- bool is_idlok(const WINDOW *win);*

- bool is_immedok(const WINDOW *win);*

- bool is_keypad(const WINDOW *win);*

- bool is_leaveok(const WINDOW *win);*

- bool is_nodelay(const WINDOW *win);*

- bool is_notimeout(const WINDOW *win);*

- bool is_pad(const WINDOW *win);*

- bool is_scrollok(const WINDOW *win);*

- bool is_subwin(const WINDOW *win);*

- bool is_syncok(const WINDOW *win);*

- WINDOW *wgetparent(const WINDOW *win);*

- int wgetdelay(const WINDOW *win);*

- int wgetscrreg(const WINDOW *win, int *top, int *bottom);*



## curs_outopts

curses output options

- (macro) int clearok(WINDOW *win, bool bf);

- int idlok(WINDOW *win, bool bf);

- (macro) void idcok(WINDOW *win, bool bf);

- void immedok(WINDOW *win, bool bf);

- (macro) int leaveok(WINDOW *win, bool bf);

- (macro) int scrollok(WINDOW *win, bool bf);


- (macro) int setscrreg(int top, int bot);
- int wsetscrreg(WINDOW *win, int top, int bot);



## curs_overlay

overlay and manipulate overlapped curses windows

- (macro) int overlay(const WINDOW *srcwin, WINDOW *dstwin);

- (macro) int overwrite(const WINDOW *srcwin, WINDOW *dstwin);

- int copywin(const WINDOW *srcwin, WINDOW *dstwin,
              int sminrow, int smincol,
              int dminrow, int dmincol,
              int dmaxrow, int dmaxcol,
              int overlay);



## curs_pad

create and display curses pads

- WINDOW *newpad(int nlines, int ncols);
- WINDOW *subpad(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);

- int prefresh(WINDOW *pad,
               int pminrow, int pmincol,
               int sminrow, int smincol,
               int smaxrow, int smaxcol);
- int pnoutrefresh(WINDOW *pad,
                   int pminrow, int pmincol,
                   int sminrow, int smincol,
                   int smaxrow, int smaxcol);

- (macro) int pechochar(WINDOW *pad, chtype ch);
- int pecho_wchar(WINDOW *pad, const cchar_t *wch);*



## curs_print

ship binary data to printer

- int mcprint(char *data, int len);*


## curs_printw

- int printw(const char *fmt, ...);
- int wprintw(WINDOW *win, const char *fmt, ...);


- int mvprintw(int y, int x, const char *fmt, ...);
- int mvwprintw(WINDOW *win, int y, int x, const char *fmt, ...);


- int vw_printw(WINDOW *win, const char *fmt, va_list varglist);


- int vwprintw(WINDOW *win, const char *fmt, va_list varglist);


## curs_refresh

refresh curses windows and lines

- (macro) int refresh(void);
- int wrefresh(WINDOW *win);

- int wnoutrefresh(WINDOW *win);

- int doupdate(void);


- (macro) int redrawwin(WINDOW *win);

- int wredrawln(WINDOW *win, int beg_line, int num_lines);



## curs_scanw

convert formatted input from a curses window

- int scanw(const char *fmt, ...);
- int wscanw(WINDOW *win, const char *fmt, ...);

- int mvscanw(int y, int x, const char *fmt, ...);
- int mvwscanw(WINDOW *win, int y, int x, const char *fmt, ...);


- int vw_scanw(WINDOW *win, const char *fmt, va_list varglist);


- int vwscanw(WINDOW *win, const char *fmt, va_list varglist);



## curs_scr_dump

read (write) a curses screen from (to) a file

- int scr_dump(const char *filename);

- (macro) int scr_restore(const char *filename);

- (macro) int scr_init(const char *filename);

- (macro) int scr_set(const char *filename);


## curs_scroll

scroll a curses window

- (macro) int scroll(WINDOW *win);

- (macro) int scrl(int n);
- int wscrl(WINDOW *win, int n);


## curs_slk

curses soft label routines

- int slk_init(int fmt);


- int slk_set(int labnum, const char *label, int fmt);
- int slk_wset(int labnum, const char *label, int fmt);


- int slk_label(int labnum);


- int slk_refresh(void);
- int slk_noutrefresh(void);

- int slk_clear(void);

- int slk_restore(void);

- int slk_touch(void);


- int slk_attron(const chtype attrs);
- int slk_attroff(const chtype attrs);
- int slk_attrset(const chtype attrs);

- int slk_attr_on(attr_t attrs, void *opts);
- int slk_attr_off(const attr_t attrs, void *opts);
- int slk_attr_set(const attr_t attrs, short pair, void *opts);

- int slk_attr(void)*


- int slk_color(short pair);


- int extended_slk_color(int pair);*



## curs_termattrs

curses environment query routines

- int baudrate(void);

- char erasechar(void);

- int erasewchar(wchar_t *ch);

- bool has_ic(void);

- bool has_il(void);

- char killchar(void);

- int killwchar(wchar_t *ch);

- char *longname(void);

- attr_t term_attrs(void);

- (macro) chtype termattrs(void);

- char *termname(void);


## curs_termcap

curses emulation of termcap(#include <term.h>)

- extern char PC;
- extern char *UP;
- extern char *BC;
- extern short ospeed;


- int tgetent(char *bp, const char *name);

- int tgetflag(const char *id);

- int tgetnum(const char *id);

- char *tgetstr(const char *id, char **area);

- char *tgoto(const char *id, int col, int row);

- int tputs(const char *str, int affcnt, int (*putc)(int));


## curs_terminfo

curses interfaces to terminfo database(#include <term.h>)

- TERMINAL *cur_term;

- const char *const boolnames[];
- const char *const boolcodes[];
- const char *const boolfnames[];
- const char *const numnames[];
- const char *const numcodes[];
- const char *const numfnames[];
- const char *const strnames[];
- const char *const strfnames[];


- int setupterm(const char *term, int filedes, int *errret);

- TERMINAL *set_curterm(TERMINAL *nterm);
- int del_curterm(TERMINAL *oterm);

- int restartterm(const char *term, int filedes, int *errret);


- char *tparm(const char *str, ...);

- int tputs(const char *str, int affcnt, int (*putc)(int));
- int putp(const char *str);


- int vidputs(chtype attrs, int (*putc)(int));
- int vidattr(chtype attrs);

- int vid_puts(attr_t attrs, short pair, void *opts, int (*putc)(int));
- int vid_attr(attr_t attrs, short pair, void *opts);


- int mvcur(int oldrow, int oldcol, int newrow, int newcol);


- int tigetflag(const char *capname);
- int tigetnum(const char *capname);
- char *tigetstr(const char *capname);


- char *tiparm(const char *str, ...);*


## curs_touch

curses refresh control routines

- (macro) int touchline(WINDOW *win, int short, int count);


- (macro) int touchwin(WINDOW *win);

- int wtouchln(WINDOW *win, int y, int n, int changed);


- (macro) int untouchwin(WINDOW *win);


- (macro) bool is_linetouched(WINDOW *win, int line);

- (macro) bool is_wintouched(WINDOW *win);



## curs_trace

curses debugging routines

- unsigned curses_trace(const unsigned param);*

- void trace(const unsigned int param);*


## curs_util

miscellaneous curses utility routines

- const char *unctrl(chtype c);
- wchar_t *wunctrl(cchar_t *c);


- const char *keyname(int c);
- const char *key_name(wchar_t w);


- void filter(void);
- void nofilter(void);


- void use_env(bool f);
- void use_tioctl(bool f);


- int putwin(WINDOW *win, FILE *filep);
- WINDOW *getwin(FILE *filep);


- int delay_output(int ms);

- int flushinp(void);



## curs_window

create curses windows

- WINDOW *newwin(int nlines, int ncols, int begin_y, int begin_x);

- int delwin(WINDOW *win);

- int mvwin(WINDOW *win, int y, int x);

- WINDoW *subwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);

- WINDOW *derwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);

- int mvderwin(WINDOW *win, int par_y, int par_x);

- WINDOW *dupwin(WINDOW *win);

- void wsyncup(WINDOW *win);

- (macro) int syncok(WINDOW *win, bool bf);

- void wcursyncup(WINDOW *win);

- void wsyncdown(WINDOW *win);



## default_colors

use terminal's default colors

- int use_default_colors(void);*
- int assume_default_colors(int fg, int bg);*



## define_key

define a keycode

- int define_key(const char *definition, int keycode);*



## key_defined

check if a keycode is defined

- int key_defined(const char *definition);



## keybound

return definition of keycode

- char *keybound(int keycode, int count);



## keyok

enable or disable a keycode

- int keyok(int keycode, bool enable);



## legacy_coding

override locale-encoding checks

- int use_legacy_coding(int level);*


## new_pair

new curses color-pair functions

- int alloc_pair(int fg, int bg);*

- int find_pair(int fg, int bg);*

- int free_pair(int pair);*



## resizeterm

change the curses terminal size

- bool is_term_resized(int lines, int columns);*

- int resize_term(int lines, int columns);*

- int resizeterm(int lines, int columns);*



## wresize

resize a curses window

- int wresize(WINDOW *win, int lines, int columns);*
