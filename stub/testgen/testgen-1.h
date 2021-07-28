int cnt_3880 = 0;
int cnt_3898 = 0;
int cnt_3916 = 0;

static const int inp_3880[] = { 1234 };
static const int inp_3898[] = { 0 };
static const int inp_3916[] = { -5 };

const int nondet_3880(){
 return inp_3880[cnt_3880++];
} 
const int nondet_3898(){
 return inp_3898[cnt_3898++];
} 
const int nondet_3916(){
 return inp_3916[cnt_3916++];
} 

