with Reals; use Reals;

package Heron with SPARK_Mode is
   Eps : Float := 2.0 ** (-23);
   
   function Heron (X : Float; N : Integer) Return Float with
     Pre => (X >= 0.5 and X <= 2.0) and N > 0 and N <= 5 and Eps = 2.0 ** (-23),
     Post => 
       Rabs (Real_Square_Root (Rf(X)) - Rf(Heron'Result))
         <= Real_Pow((Ri(1) + Rf(Eps)), Ri(3 * N)) / Real_Pow(Ri(2), Real_Pow(Ri(2), Ri(N)));

end Heron;
