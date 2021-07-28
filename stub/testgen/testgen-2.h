int cnt_4952 = 0;
int cnt_4972 = 0;
int cnt_4992 = 0;

static const int inp_4952[] = { 2 };
static const int inp_4972[] = { 0 };
static const int inp_4992[] = { -1 };

const int nondet_4952(){
 return inp_4952[cnt_4952++];
}
const int nondet_4972(){
 return inp_4972[cnt_4972++];
}
const int nondet_4992(){
 return inp_4992[cnt_4992++];
}