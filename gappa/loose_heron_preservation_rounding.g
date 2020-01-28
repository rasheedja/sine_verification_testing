@rnd = float<ieee_32, ne>;

Mheron = (y + x) / 2;
heron rnd= (y + x) / 2;
eps = 1/8388608;

{
  x in [0.5, 2] -> y in [0.8, 1.8] ->
    |Mheron - heron| <= 0.1
}