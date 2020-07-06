with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Reals; use Reals;

package RootF with SPARK_Mode is

   function RootF(A, B : Float) return Float with
     Pre => A < B and (A > 1.0 and Sqrt(A - 1.0) - Sin (A) < 0.0) and (B > 1.0 and Sqrt(B - 1.0) - Sin(B) > 0.0),
     Post => Rabs(Rf(RootF'Result)) <= Rf(0.002);

end RootF;
