int cnt_4976 = 0;
int cnt_5512 = 0;
int cnt_5533 = 0;

static const int inp_4976[] = { 10 };
static const int inp_5512[] = { 3 };
static const int inp_5533[] = { -2 };

const int nondet_4976(){
 return inp_4976[cnt_4976++];
}
const int nondet_5512(){
 return inp_5512[cnt_5512++];
}
const int nondet_5533(){
 return inp_5533[cnt_5533++];
} 

