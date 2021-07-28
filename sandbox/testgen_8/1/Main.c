extern int __VERIFIER_nondet_int();
#include "testgen.h"
int main( ) {
    int x = nondet_4904();
    int y = nondet_4924();
    while (1) {
        if (x > 1 || y > 2){
            y ++;
        }else{
            x++;
        }
        if (x > 10 || y > 20) {
            break;
        }
        x++;
    }
    return 0;
}