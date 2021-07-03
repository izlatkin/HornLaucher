from z3 import *

import z3
ctx = z3.Context()
s = z3.Solver(ctx=ctx)
f = z3.parse_smt2_file("../bench_horn/1_test1.smt2")
#f = z3.parse_smt2_file("../bench_horn/abdu_01.smt2")
#f = z3.parse_smt2_file("/Users/ilyazlatkin/PycharmProjects/HornLauncher/out/aws_add_size_checked_harness.c/aws_add_size_checked_harness28824.smt2")
print(f)

# o = Optimize()
# i = Int('x')
# o.add(i > 5)
# o.add(i < 10)
# o.maximize(i)
# print(o.sexpr())
# print(o.check())
# print(o.model())

# x = Int('x')
# y = Int('y')
# print(simplify(x + y + 2*x + 3))
# print(simplify(x < y + x + 2))
# print(simplify(And(x + 1 >= 3, x**2 + x**2 + y**2 + 2 >= 5)))


# p = Bool('p')
# q = Bool('q')
# print(And(p, q, True))
# print(simplify(And(p, q, True)))
# print(simplify(And(p, False)))
