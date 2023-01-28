// #include <stdlib.h>
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
