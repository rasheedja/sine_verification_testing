from polya import *

x, yE, yR, eps = Vars('x y eps')

s = Solver()

s.assume(x >= 1/2)
s.assume(x <= 2)

s.assume(eps == 1/8388608)

def RU (x): x * (1 + eps)
def RD (x): x * (1 - eps)

s.assume(yE == (1 + x / 2))
s.assume(yR == ((((1 + x) * (1 + eps)) / 2) * (1 + eps)))

print(s.prove(abs(yE - yR) <= 10))
