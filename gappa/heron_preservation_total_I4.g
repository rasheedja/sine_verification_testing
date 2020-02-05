@rnd = float<ieee_32, ne>;

y1 rnd= (y + x / y)/2;
eps = 1/8388608;

{
  x in [0.5, 2] /\ y in [0.7, 1.8] ->
    |sqrt(x) - y| - 18 * eps - 1/256 <= 0 ->
      |sqrt(x) - y1| - 24 * eps - 1/65536 <= 0
}
