y1 = (y + x / y)/2;
eps = 1/8388608;

{
  x in [0.5, 2] /\ y in [0.7, 1.8] ->
    |sqrt(x) - y| - 12 * eps - 1/16 <= 0 ->
      |sqrt(x) - y1| - 12 * eps - 1/256 <= 0
}
