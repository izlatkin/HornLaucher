#include "testgen.h"

int main() {
    int x = 0;
    int y = nondet_4924();
    while (1) {
      int tmp = nondet_9413();
      if (tmp){
        x++;
      } else {
        y = 0;
      }
      if (x > 5) {
        break;
      }
      if (y == 0) {
        y++;
      }
    }
    return 0;
}