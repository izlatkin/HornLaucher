extern int __VERIFIER_nondet_int();
#include "testgen.h"
//
// Created by Ilya Zlatkin on 30.06.2021.
//
//[1234,0,-5],[2,0,-1],[0,4,-4]
int main() {
    int x = 0;
    int y = __VERIFIER_nondet_int();
    int z = __VERIFIER_nondet_int();
    while (1) {
        if (x >= 5)
            y ++;
        else
            x ++;
        if (y <= 5)
            z ++;
        else
            if (x > y)
                y ++; // this is unreachable
            else
                x = 0;
        if (z == 0)
            break ;
        }
}