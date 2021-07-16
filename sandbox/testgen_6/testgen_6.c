int main( ) {
    int x = 90367;
    int y = 61802;
    while (1) {
        if (x >= 5 || y == 0 && (x + y) % 2 == 1){
            y ++;
        }
        if (x + y == 100000 || x + y == - 5000){
            break;
        }
         x++;

    }
    return 0;
}