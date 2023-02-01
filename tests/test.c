#include <curses.h>

int main() {

  initscr();
  nonl();
  // cbreak();
  raw();
  keypad(stdscr, TRUE);

  getch();

  getch();
  endwin();
  return 0;

};
