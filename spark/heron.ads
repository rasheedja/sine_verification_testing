with Reals; use Reals;

package Heron with SPARK_Mode is
   Eps : Float := 2.0 ** (-23);
   
   function Heron (X : Float; N : Integer) Return Float with
     Pre => (X >= 0.5 and X <= 2.0) and N > 0 and N <= 5 and Eps = 2.0 ** (-23),
     Post => 
       Rabs (Real_Square_Root (Rf(X)) - Rf(Heron'Result))
         <=  1 / Real_Pow(Ri(2), Ri(2 ** N)) + Ri(6 * N) * Rf(Eps);
      
end Heron;
