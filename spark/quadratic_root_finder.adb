with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body Quadratic_Root_Finder with SPARK_Mode is

   function Positive_Root_Finder (A : Float; B : Float; C : Float) return Float is
      ((- B + Sqrt(Discriminant (A, B, C))) / (2.0 * A));

   function Negative_Root_Finder (A : Float; B : Float; C : Float) return Float is
      ((- B - Sqrt(Discriminant (A, B, C))) / (2.0 * A));

   function Discriminant (A: Float; B : Float; C : Float) return Float is
     (B ** 2 - 4.0 * A * C);
     
end Quadratic_Root_Finder;
