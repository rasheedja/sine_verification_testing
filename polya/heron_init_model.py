from polya import *

x, y, eps = Vars('x y eps')

s = Solver()

s.assume(x >= 1/2)
s.assume(x <= 2)

s.assume(eps == 1/8388608)

s.assume(y >= 7/10)
s.assume(y <= 18/10)
s.assume(y == (1 + x / 2))

print(s.prove(abs((x ** (1/2)) - y) <= 1))
