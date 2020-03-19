from pyibex import Interval

x = Interval(0.5, 2)
eps = 2**-23

Mheron = Interval((1 + x) / 2)

Rheron = Interval((1 + x) / 2)
Rheron = Rheron * (1 + eps)

lbDiff = abs(Mheron[0] - Rheron[0])
ubDiff = abs(Mheron[1] - Rheron[1])

upperErrorBound = ubDiff if lbDiff < ubDiff else ubDiff

print('Absolute rounding error: ' + str(upperErrorBound))
