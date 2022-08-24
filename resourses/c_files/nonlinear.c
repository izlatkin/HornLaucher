#include ""

extern int __VERIFIER_nondet_int();
int mc91(int n){
    if (n > 100)
        return n - 10;
    else
        return mc91(mc91(n+11));
}

int main() {
    int n = __VERIFIER_nondet_int();
    //assume(n > 100);
    mc91(n);
//    sassert(mc91(n)==91);
}