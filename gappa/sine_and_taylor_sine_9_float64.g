@rnd = float<ieee_64, ne>;
Mts = x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) * (1 / 5040.0 - (x * x) / 362880))));
ts rnd= x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) * (1 / 5040.0 - (x * x) / 362880))));

{
  # lower bound is 2^-23 + 2^-126 
  x in [0.000000119209289550781250000000000000011754943508222875079687365372222456778186655567720875215087517062784172594547271728515625, 0.75] -> 
  |ts - Mts| in ? # |ts - Mts| in [0, 310603720466396411b-111 {1.1964e-16, 2^(-52.8922)}]
}
