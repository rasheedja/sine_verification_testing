with Ada.Numerics; use Ada.Numerics;

package libsin with SPARK_Mode is
   pragma Pure;

   Max_Red_Trig_Arg : constant := 0.26 * Ada.Numerics.Pi;
   Half_Pi          : constant := Ada.Numerics.Pi / 2.0;
   Sqrt_2           : constant := 1.41421_35623_73095_04880_16887_24209_69807_85696;

   type Polynomial is array (Natural range <>) of Float;

   function Compute_Horner (P : Polynomial; X : Float) return Float with Inline;

   function Maximum_Relative_Error (X : Float) return Float is (0.0 * X);
   
   function Exact (X : Long_Float) return Float is (Float (X));
   
   function Epsilon return Float is (Float'Model_Epsilon);
   
   function Approx_Sin  (X : Float) return Float
     with Pre  => (abs X) <= Exact (Max_Red_Trig_Arg),
     Post => abs Approx_Sin'Result <= Exact (1.0) and then
     Maximum_Relative_Error (Approx_Sin'Result) <= 2.0 * Epsilon;

   function Approx_Cos (X : Float) return Float
     with Pre  => abs (X) <= Exact (Max_Red_Trig_Arg),
     Post => abs (Approx_Cos'Result) <= Exact (1.0)
     and then Maximum_Relative_Error (Approx_Cos'Result)
     <= 2.0 * Epsilon;

   function Sin (X : Float) return Float
     with Export, Convention => C, External_Name => "sinf";
end libsin;
