with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body RootF with SPARK_Mode is

   function RootF (A, B : Float) return Float is
      M : Float;
      tA : Float := A;
      tB : Float := B;
   begin
      while (tB - tB > 0.001) loop
         M := (tA + tB) / 2.0;
         
         pragma Loop_Invariant (tA <= tB);
         pragma Loop_Invariant (Sqrt(tA-1.0) - Sin(tA) <= 0.0);
         pragma Loop_Invariant (Sqrt(tB-1.0) - Sin(tB) >= 0.0);
         
         if Sqrt(M-1.0) - Sin(M) >= 0.0
         then tB := M;
         else tA := M;
         end if;
         
      end loop;
      
      return tB;
   end RootF;
end RootF;
