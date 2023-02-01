#include <stdlib.h>
#include <curses.h>

// curs_variables
int get_color_pairs() {
  return COLOR_PAIRS;
};
int get_colors() {
  return COLORS;
};
int get_cols() {
  return COLS;
};
int get_escdelay() {
  return ESCDELAY;
};
int get_lines() {
  return LINES;
};
int get_tabsize() {
  return TABSIZE;
};
WINDOW *get_curscr() {
  return curscr;
};
WINDOW *get_newscr() {
  return newscr;
};
WINDOW *get_stdscr() {
  return stdscr;
};

// curs_attr
attr_t a_normal     = A_NORMAL;
attr_t a_standout   = A_STANDOUT;
attr_t a_underline  = A_UNDERLINE;
attr_t a_reverse    = A_REVERSE;
attr_t a_blink      = A_BLINK;
attr_t a_dim        = A_DIM;
attr_t a_bold       = A_BOLD;
attr_t a_protect    = A_PROTECT;
attr_t a_invis      = A_INVIS;
attr_t a_altcharset = A_ALTCHARSET;
attr_t a_italic     = A_ITALIC;
attr_t a_chartext   = A_CHARTEXT;
attr_t a_color      = A_COLOR;
attr_t wa_horizontal = WA_HORIZONTAL;
attr_t wa_left       = WA_LEFT;
attr_t wa_low        = WA_LOW;
attr_t wa_right      = WA_RIGHT;
attr_t wa_top        = WA_TOP;
attr_t wa_vertical   = WA_VERTICAL;

// curs_color
int color_pair(int n) {
  return COLOR_PAIR(n);
};
int color_black   = COLOR_BLACK;
int color_red     = COLOR_RED;
int color_green   = COLOR_GREEN;
int color_yellow  = COLOR_YELLOW;
int color_blue    = COLOR_BLUE;
int color_magenta = COLOR_MAGENTA;
int color_cyan    = COLOR_CYAN;
int color_white   = COLOR_WHITE;

// curs_getch
int key_break     = KEY_BREAK;
int key_down      = KEY_DOWN;
int key_up        = KEY_UP;
int key_left      = KEY_LEFT;
int key_right     = KEY_RIGHT;
int key_home      = KEY_HOME;
int key_backspace = KEY_BACKSPACE;
int key_f0        = KEY_F0;
int key_f(int n) {
  return KEY_F(n);
};
int key_dl        = KEY_DL;
int key_il        = KEY_IL;
int key_dc        = KEY_DC;
int key_ic        = KEY_IC;
int key_eic       = KEY_EIC;
int key_clear     = KEY_CLEAR;
int key_eos       = KEY_EOS;
int key_eol       = KEY_EOL;
int key_sf        = KEY_SF;
int key_sr        = KEY_SR;
int key_npage     = KEY_NPAGE;
int key_ppage     = KEY_PPAGE;
int key_stab      = KEY_STAB;
int key_ctab      = KEY_CTAB;
int key_catab     = KEY_CATAB;
int key_enter     = KEY_ENTER;
int key_sreset    = KEY_SRESET;
int key_reset     = KEY_RESET;
int key_print     = KEY_PRINT;
int key_ll        = KEY_LL;
int key_a1        = KEY_A1;
int key_a3        = KEY_A3;
int key_b2        = KEY_B2;
int key_c1        = KEY_C1;
int key_c3        = KEY_C3;
int key_btab      = KEY_BTAB;
int key_beg       = KEY_BEG;
int key_cancel    = KEY_CANCEL;
int key_close     = KEY_CLOSE;
int key_command   = KEY_COMMAND;
int key_copy      = KEY_COPY;
int key_create    = KEY_CREATE;
int key_end       = KEY_END;
int key_exit      = KEY_EXIT;
int key_find      = KEY_FIND;
int key_help      = KEY_HELP;
int key_mark      = KEY_MARK;
int key_message   = KEY_MESSAGE;
int key_mouse     = KEY_MOUSE;
int key_move      = KEY_MOVE;
int key_next      = KEY_NEXT;
int key_open      = KEY_OPEN;
int key_options   = KEY_OPTIONS;
int key_previous  = KEY_PREVIOUS;
int key_redo      = KEY_REDO;
int key_reference = KEY_REFERENCE;
int key_refresh   = KEY_REFRESH;
int key_replace   = KEY_REPLACE;
int key_resize    = KEY_RESIZE;
int key_restart   = KEY_RESTART;
int key_resume    = KEY_RESUME;
int key_save      = KEY_SAVE;
int key_sbeg      = KEY_SBEG;
int key_scancel   = KEY_SCANCEL;
int key_scommand  = KEY_SCOMMAND;
int key_scopy     = KEY_SCOPY;
int key_screate   = KEY_SCREATE;
int key_sdc       = KEY_SDC;
int key_sdl       = KEY_SDL;
int key_select    = KEY_SELECT;
int key_send      = KEY_SEND;
int key_seol      = KEY_SEOL;
int key_sexit     = KEY_SEXIT;
int key_sfind     = KEY_SFIND;
int key_shelp     = KEY_SHELP;
int key_shome     = KEY_SHOME;
int key_sic       = KEY_SIC;
int key_sleft     = KEY_SLEFT;
int key_smessage  = KEY_SMESSAGE;
int key_smove     = KEY_SMOVE;
int key_snext     = KEY_SNEXT;
int key_soptions  = KEY_SOPTIONS;
int key_sprevious = KEY_SPREVIOUS;
int key_sprint    = KEY_SPRINT;
int key_sredo     = KEY_SREDO;
int key_sreplace  = KEY_SREPLACE;
int key_sright    = KEY_SRIGHT;
int key_srsume    = KEY_SRSUME;
int key_ssave     = KEY_SSAVE;
int key_ssuspend  = KEY_SSUSPEND;
int key_sundo     = KEY_SUNDO;
int key_suspend   = KEY_SUSPEND;
int key_undo      = KEY_UNDO;

// curs_getyx
void GETYX(WINDOW *win, int *y, int *x) {
  getyx(win, *y, *x);
};
void GETPARYX(WINDOW *win, int *y, int *x) {
  getparyx(win, *y, *x);
};
void GETBEGYX(WINDOW *win, int *y, int *x) {
  getbegyx(win, *y, *x);
};
void GETMAXYX(WINDOW *win, int *y, int *x) {
  getmaxyx(win, *y, *x);
};
