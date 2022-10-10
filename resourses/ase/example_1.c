extern int __VERIFIER_nondet_int();
int main() {
    int x = 0;
    int y = 0;
    while (__VERIFIER_nondet_int())
    {
        x++;
        y++;
        if (x != y) {
            x = 0;
        }
        if (x == 5) break;
    }
}
