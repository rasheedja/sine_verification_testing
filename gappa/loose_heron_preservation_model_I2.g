y1 = (y + x / y)/2;
eps = 1/8388608;

{
  x in [0.5, 2] /\ y in [0.8, 1.5] ->
    |sqrt(x) - y| - 6 * eps + 1/4 <= 0 ->
      |sqrt(x) - y1| <= 0.1
}
