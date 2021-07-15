int main( ) {
    int x = 10865;
    int y = 2390;
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