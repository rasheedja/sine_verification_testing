with Reals; use Reals;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body Heron with SPARK_Mode is

   function Heron (X : Float; N : Positive) return Float is
      Y : Float := 1.0;
   begin
      
      for i in 1 .. N loop
         pragma Loop_Invariant (Y /= 0.0);
         pragma Loop_Invariant (Y >= 0.5);
         pragma Loop_Invariant (i <= N);
         pragma Loop_Invariant 
           (Real_Abs 
              (Real_Square_Root (Real_From_Float(X)) - Real_From_Float(Y)) 
            <= Real_From_Float((1.0 + Eps) ** (3 * i)) / Real_From_Int(2 ** (2 ** i)));

         
         Y := (Y + X/Y) / 2.0;
      end loop;
      
      return Y;
   end Heron;
   
end Heron;
