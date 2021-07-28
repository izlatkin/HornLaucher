#include "testgen.h"

int main() {
    int x = 0;
    int y = __VERIFIER_nondet_int();
    while (1) {
      int tmp = __VERIFIER_nondet_int();
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