extern int __VERIFIER_nondet_int();
#include "testgen.h"
int main( ) {
    int x = nondet_4904();
    int y = nondet_4924();
    while (1) {
        if (x >= 5 || y == 0 && (x + y) % 2 == 1){
            y ++;
        }
        if (x + y == 100000 || x + y == - 5000){
            break;
        }
         x++;

    }
    return 0;
}