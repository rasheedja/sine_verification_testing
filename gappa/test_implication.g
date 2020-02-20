@rnd = float<ieee_32, ne>;


My = m * x + c;
y rnd= m * x + c;
My2 = m * My + c;
y2 rnd= m * My + c;

{
  m in [1, 10] /\ c in [1, 5] /\ x in [1, 10] ->
  |My - y| in [0, 1b-17] -> # [0, 1b-17 {7.62939e-06, 2^(-17)}] 
  |My2 - y2| in ?
}

#yE = (y + (x/y))/2;
#yR rnd= (y + (x/y))/2;
#
#{
#  x in [0.5, 2] -> y in [0.7, 1.8] -> yE in [0.7, 1.8] -> yR in [0.7, 1.8] -> N in [1, 5] -> i in [1, 5] ->
#  |sqrt(x) - y| in [0, 630010047104512835b-59] -> # 1.1944...
#  |sqrt(x) - yE| in ? # 1.1944...
#}
