with Reals; use Reals;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body Heron with SPARK_Mode is

   function Heron (X : Float; N : Integer) return Float is
      Y : Float := 1.0;
   begin
      
      for i in 1 .. N loop
         Y := (Y + X/Y) / 2.0;

         pragma Loop_Invariant (Y >= 0.7);
         pragma Loop_Invariant (Y <= 1.8);
         pragma Loop_Invariant 
           (Rabs (Real_Square_Root (Rf(X)) - Rf(Y))
            <=  (Ri(1) / (Real_Pow(Ri(2), Ri(2 ** i))) + Ri(6 * i) * Rf(Eps)));
         
      end loop;
      
      return Y;
   end Heron;
   
end Heron;
