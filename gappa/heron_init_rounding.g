@rnd = float<ieee_32, ne>;

Mheron = (1 + x) / 2;
heron rnd= (1 + x) / 2;
eps = 1/8388608;

{
  x in [0.5, 2] ->
    |Mheron - heron| - 6 * eps <= 0
}