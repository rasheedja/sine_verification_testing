from polya import *

from polya.modules.builtins_module import sin

x = Vars('x')
taylor = Func('taylor')

s = Solver()

s.assume(x >= 0)
s.assume(x <= 3/4)
s.add_axiom(Forall(x, taylor(x) ==  x * (1 - (x * x) * (1 / 6 - (x * x) * (1 / 120 - (x * x) / 5040)))))

print(s.prove(abs(sin(x) - taylor(x)) <= 10))

# cannot be proved
# it seems that polya only knows that the result of sine is between 1 and -1
