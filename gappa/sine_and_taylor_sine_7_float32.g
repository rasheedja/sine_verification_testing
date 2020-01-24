@rnd = float<ieee_32, ne>;

Mts = x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) / 5040.0)));
ts rnd= x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) / 5040.0)));

{
  x in [0, 0.75] -> 
  |ts - Mts| in ? # |ts - Mts| in [0, 19380484553269175b-78 {6.41246e-08, 2^(-23.8946)}]
}

