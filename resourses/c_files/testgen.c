//
// Created by Ilya Zlatkin on 30.06.2021.
//
//[1234,0,-5],[2,0,-1],[4,4,4],[0,4,-4]
#include <stdlib.h>
int main() {
    int x = 0;
    int y = 4;
    int z = -4;
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