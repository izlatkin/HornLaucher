int x = 0;
int y = input ();
int z = input ();
while (1) {
5 if (x >= 5)
6 y ++; // needs at least 6 iterations to reach
7 else
8 x ++; // 𝑥 ∈ [0, 5] always holds
9 if (y <= 5)
z ++;
else
if (x > y)
y ++; // this is unreachable
else
x = 0;
if (z == 0)
break ;
}