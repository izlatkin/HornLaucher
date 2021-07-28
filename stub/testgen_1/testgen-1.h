int cnt_3900 = 0;
int cnt_4356 = 0;
int cnt_4375 = 0;

static const int inp_3900[] = { 2 };
static const int inp_4356[] = { 0 };
static const int inp_4375[] = { -1 };

const int nondet_3900(){
 return inp_3900[cnt_3900++];
} 
const int nondet_4356(){
 return inp_4356[cnt_4356++];
} 
const int nondet_4375(){
 return inp_4375[cnt_4375++];
} 

