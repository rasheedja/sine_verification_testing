with Ada.Numerics; use Ada.Numerics;
with Reals; use Reals;

package libsin2 with SPARK_Mode is
   subtype Quadrant is Integer range 0 .. 3;
   
   function Multiply_Add (X, Y, Z : Float) return Float with
     Pre => (-100000.0 <= X and X <= 100000.0 and -100000.0 <= Y and Y <= 100000.0 and -100000.0 <= Z and Z <= 100000.0),
     Post => Multiply_Add'Result = X * Y + Z;
   
   Max_Red_Trig_Arg : constant := 0.26 * Ada.Numerics.Pi;
   Half_Pi          : constant := Ada.Numerics.Pi / 2.0;
   Sqrt_2           : constant := 1.41421_35623_73095_04880_16887_24209_69807_85696;

   type Polynomial is array (Natural range <>) of Float;

   function My_Machine_Rounding (X : Float) return Float with
     Post => 
       (if X - Float'Floor(X) < 0.5 
              then My_Machine_Rounding'Result = Float'Floor(X) 
              else My_Machine_Rounding'Result = Float'Ceiling(X)) 
       and (X - My_Machine_Rounding'Result) <= 0.5 
     and (X - My_Machine_Rounding'Result) >= -0.5;
   
   procedure Split_Veltkamp (X : Float; X_Hi, X_Lo : out Float)
     with 
       Pre => (-100000.0 <= X and X <= 100000.0),
       Post => X = X_Hi + X_Lo;

   procedure Reduce_Half_Pi (X : in out Float; Q : out Quadrant; R : out Integer) -- Might need to return number of Pi reductions here (for specification)
     with Pre  => X >= 0.0 and X <= 500.0,
     Post => abs(X) <= Max_Red_Trig_Arg and abs(X - (X'Old - (Float(R) * (Ada.Numerics.Pi / 2.0)))) <= 0.01;
   --  procedure Reduce_Half_Pi_Large (X : in out Float;  N : Float; Q : out Quadrant; R : out Integer)
   --    with Pre  => X >= 0.0 and X <= 100000.0,
   --    Post => abs (X - (X'Old - (Float(R) * Half_Pi))) <= 0.0001;
   --  function Compute_Horner (P : Polynomial; X : Float) return Float with
   --    Pre => (P'First >= 0 and P'First <= 1 and P'Last >= 3 and P'Last <= 4 and -1000.0 <= X and X <= 1000.0 and (for all I in P'Range => abs(P(I)) <= 1.0));

   function Maximum_Relative_Error (X : Float) return Float is (0.0 * X);
   
   function Exact (X : Long_Float) return Float
     with
       Pre => abs(X) <= 1000.0,
       Post => Exact'Result = Float(X);
   
   function Epsilon return Float is (Float'Model_Epsilon);
   
   function Approx_Sin  (X : Float) return Float
     with Pre  => (abs X) <= (Max_Red_Trig_Arg),
     Post => abs Approx_Sin'Result <= (1.0) and then
     Maximum_Relative_Error (Approx_Sin'Result) <= 2.0 * Epsilon and then
     Rabs (Rf(Approx_Sin'Result) - Real_Sin(Rf(X))) <= Rf(30.0/8388608.0);

   function Approx_Cos (X : Float) return Float
     with Pre  => abs (X) <= (Max_Red_Trig_Arg),
     Post => abs (Approx_Cos'Result) <= (1.0)
     and then Maximum_Relative_Error (Approx_Cos'Result)
     <= 2.0 * Epsilon and then
     Rabs (Rf(Approx_Cos'Result) - Real_Cos(Rf(X))) <= Rf(30.0/8388608.0);

   function Sin (X : Float) return Float
     with Pre => abs (X) <= 500.0, Export, Convention => C, External_Name => "sinf",
     Post => Rabs (Rf(Sin'Result) - Real_Sin(Rf(X))) <= Rf(0.01);
end libsin2;
