int main( ) {
    int x = 89103;
    int y = 64089;
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