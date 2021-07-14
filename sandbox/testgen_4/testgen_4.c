int main( ) {
    int x = 49707;
    int y = 33768;
    while (1) {
        if (x >= 5){
            y ++;
        }else{
            x++;
        }
        if (x + y == 100000){
            break;
        }
        x++;
    }
    return 0;
}