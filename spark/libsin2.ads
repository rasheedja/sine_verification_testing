with Ada.Numerics; use Ada.Numerics;

package libsin2 with SPARK_Mode is
   subtype Quadrant is Integer range 0 .. 3;
   
   Max_Red_Trig_Arg : constant := 0.26 * Ada.Numerics.Pi;
   Half_Pi          : constant := Ada.Numerics.Pi / 2.0;
   Sqrt_2           : constant := 1.41421_35623_73095_04880_16887_24209_69807_85696;

   type Polynomial is array (Natural range <>) of Float;

   function My_Machine_Rounding (X : Float) return Float;
   
   procedure Split_Veltkamp (X : Float; X_Hi, X_Lo : out Float)
     with Post => X = X_Hi + X_Lo;

   procedure Reduce_Half_Pi (X : in out Float; Q : out Quadrant; R : out Integer) -- Might need to return number of Pi reductions here (for specification)
     with Pre  => X >= 0.0,
     Post => abs (X - (X'Old - (Float(R) * Half_Pi))) <= 0.0001;
   procedure Reduce_Half_Pi_Large (X : in out Float;  N : Float; Q : out Quadrant; R : out Integer);
   
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
end libsin2;
