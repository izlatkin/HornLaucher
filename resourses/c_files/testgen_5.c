int main( ) {
    int x = 4;
    int y = 20;
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