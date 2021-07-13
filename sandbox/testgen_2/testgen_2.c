//
// Created by Ilya Zlatkin on 30.06.2021.
//
//[0,2,1,2,4],[1,2,-1,2,2]
#include <stdlib.h>
int main() {
    int x = 58526;
    int p ; // should be ignore
    //just comment line
    int y = 4368;
    int z = 211;
    int a= 4946, b= 7724, c, N; // should be a problem

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