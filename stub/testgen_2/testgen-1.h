int cnt_3890 = 0;
int cnt_4367 = 0;
int cnt_4386 = 0;
int cnt_3809 = 0;
int cnt_36566 = 0;

static const int inp_3890[] = { 0 };
static const int inp_4367[] = { 2 };
static const int inp_4386[] = { 1 };
static const int inp_3809[] = { 2 };
static const int inp_36566[] = { 4 };

const int nondet_3890(){
 return inp_3890[cnt_3890++];
} 
const int nondet_4367(){
 return inp_4367[cnt_4367++];
} 
const int nondet_4386(){
 return inp_4386[cnt_4386++];
} 
const int nondet_3809(){
 return inp_3809[cnt_3809++];
} 
const int nondet_36566(){
 return inp_36566[cnt_36566++];
} 

