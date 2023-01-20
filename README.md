# ncurses

A ncurses interface for common lisp (sbcl).

## c names

### curs_addch

- addch

- echochar

- mvaddch

- mvwaddch

- waddch

- wechochar


### curs_addchstr

- addchnstr

- addchstr

- mvaddchnstr

- mvwaddchnstr

- mvwaddchstr

- waddchnstr

- waddchstr


### curs_addstr

- addnstr

- addstr

- mvaddchstr

- mvaddstr

- mvwaddnstr

- mvwaddstr

- waddnstr

- waddstr


### curs_add_wch

- add_wch

- echo_wchar

- mvadd_wch

- mvwadd_wch

- wadd_wch

- wecho_wchar


### curs_add_wchstr

- add_wchnstr

- add_wchstr

- mvadd_wchnstr

- mvadd_wchstr

- mvwadd_wchnstr

- mvwadd_wchstr

- wadd_wchnstr

- wadd_wchstr


### curs_addwstr

- addnwstr

- addwstr

- mvaddnwstr

- mvaddwstr

- mvwaddnwstr

- mvwaddwstr

- waddnwstr

- waddwstr


### curs_attr

- PAIR_NUMBER

- attr_get

- attr_off

- attr_on

- attr_set

- attroff

- attron

- attrset

- chgat

- color_set

- getattrs

- mvchgat

- mvwchgat

- standend

- standout

- wattr_get

- wattr_off

- wattr_on

- wattr_set

- wattroff

- wattron

- wattrset

- wchgat

- wcolor_set

- wstandend

- wstandout


### curs_beep

- beep

- flash


### curs_bkgd

- bkgd

- bkgdset

- getbkgd

- wbkgd

- wbkgdset


### curs_bkgrnd

- bkgrnd

- bkgrndset

- getbkgrnd

- wbkgrnd

- wbkgrndset

- wgetbkgrnd


### curs_border

- border

- box

- hline

- mvhline

- mvvline

- mvwhline

- mvwvline

- vline

- wborder

- whline

- wvline


### curs_border_set

- border_set

- box_set

- hline_set

- mvhline_set

- mvvline_set

- mvwhline_set

- mvwvline_set

- vline_set

- wborder_set

- whline_set

- wvline_set


### curs_color

- COLOR_PAIR

- can_change_color

- color_content

- extended_color_content*

- extended_pair_content*

- has_colors

- init_color

- init_extended_color*

- init_extended_pair*

- init_pair

- pair_content

- reset_color_pairs*

- start_color


### curs_clear

- clear

- clrtobot

- clrtoeol

- erase

- wclear

- wclrtobot

- wclrtoeol

- werase


### curs_delch

- delch

- mvdelch

- mvwdelch

- wdelch


### curs_deleteln

- deleteln

- insdelln

- insertln

- wdeleteln

- winsdelln

- winsertln


### curs_extend

- curses_version*

- use_extended_names*


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
