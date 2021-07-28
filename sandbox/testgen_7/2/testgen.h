int cnt_4904 = 0;
int cnt_4924 = 0;

static const int inp_4904[] = { 991 };
static const int inp_4924[] = { 9000 };

const int nondet_4904(){
 return inp_4904[cnt_4904++];
}
const int nondet_4924(){
 return inp_4924[cnt_4924++];
} 

