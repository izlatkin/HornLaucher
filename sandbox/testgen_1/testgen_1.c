#include <printf.h>

//
// Created by Ilya Zlatkin on 05.07.2021.
//
//[2,0,-1],[10,4,5],[2,0,-1]
int main() {
    int x = 72206;
    int y = 68123;
    int z = 71720;
    while (1) {
        if (x + y >= 5)
            y ++;
        else
            x ++;
        if (y <= 5) {
            z++;
            y--;
        }else
        if (x > y)
            y ++; // this is unreachable
        else
            x = 0;
        if (z == 0)
            break ;
        printf("%d\n",1);
    }
}