#include <printf.h>

//
// Created by Ilya Zlatkin on 05.07.2021.
//
//[0,4,-4],[10,4,5]
int main() {
    int x = 10;
    int y = 4;
    int z = 5;
    while (x < y) {
        if (x > z)
            x--;
        else
            y++;
        if (x + y == -z)
            break;
        printf("%d\n",1);
    }
}