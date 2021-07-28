extern int __VERIFIER_nondet_int();
#include "testgen.h"
//
// Created by Ilya Zlatkin on 30.06.2021.
//
//[0,2,1,2,4],[1,2,-1,2,2]
#include <stdlib.h>
int main() {
    int x = nondet_4964();
    int p ; // should be ignore
    //just comment line
    int y = nondet_5525();
    int z = 1 * nondet_8014();
    int a= nondet_4878(), b = nondet_31139(), c, N; // should be a problem
    while (1) {
        if (c + b == y + z){
            break ;
        }
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