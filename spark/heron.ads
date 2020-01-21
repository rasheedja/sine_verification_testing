with Reals; use Reals;

package Heron with SPARK_Mode is
   Eps : Float := 2.0 ** (-23);
   
   function Heron (X : Float; N : Positive) Return Float with
     Pre => (X >= 0.5 and X <= 2.0) and N <= 5 and Eps = 2.0 ** (-23),
     Post => 
       Real_Abs (Real_Square_Root (Real_From_Float(X)) - Real_From_Float(Heron'Result))
         <= Real_From_Float((1.0 + Eps) ** (2 * N)) / Real_From_Int(2 ** (2 ** N));

end Heron;
