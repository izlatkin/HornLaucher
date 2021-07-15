//
// Created by Ilya Zlatkin on 30.06.2021.
//
//[0,2,1,2,4],[1,2,-1,2,2]
#include <stdlib.h>
int main() {
    int x = 48038;
    int p ; // should be ignore
    //just comment line
    int y = 7885;
    int z = 79664;
    int a= 13138, b= 41287, c, N; // should be a problem

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