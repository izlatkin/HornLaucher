extern int __VERIFIER_nondet_int();
#include "testgen.h"
int main( ) {
    int x = nondet_4904();
    int y = nondet_4924();
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