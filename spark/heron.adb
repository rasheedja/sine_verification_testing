with Reals; use Reals;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body Heron with SPARK_Mode is

   function Heron (X : Float; N : Integer) return Float is
      Y : Float := 1.0;
   begin
      
      for i in 1 .. N loop
         pragma Loop_Invariant (Y >= 0.7);
         pragma Loop_Invariant (Y <= 1.8);
         pragma Loop_Invariant (abs(X - Y) <= 1.3);
         pragma Loop_Invariant (i - 1 < N);
         pragma Loop_Invariant 
           (Rabs (Real_Square_Root (Rf(X)) - Rf(Y)) 
            <= Real_Pow((Ri(1) + Rf(Eps)), Ri(3 * (i - 1))) / Real_Pow(Ri(2), Ri(2 ** (i - 1))));
         
         Y := (Y + X/Y) / 2.0;
      end loop;
      
      return Y;
   end Heron;
   
end Heron;
