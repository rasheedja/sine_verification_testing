@rnd = float<ieee_32, ne>;

heron rnd= (1 + x) / 2;
eps = 1/8388608;

{
  x in [0.5, 2] ->
    |sqrt(x) - heron| <= 0.1
}
