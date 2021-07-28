extern int __VERIFIER_nondet_int();
#include "testgen.h"
int main( ) {
    int x = __VERIFIER_nondet_int();
    int y = __VERIFIER_nondet_int();
    while (1) {
        if (x >= 5){
            y ++;
        }
        if (x + y == 100000){
            break;
        }
        if (y % 2 == 1){
            x++;
        }
    }
}