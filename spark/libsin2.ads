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

   procedure My_Machine_Rounding (X : Float; Y : out Float) with
     Pre =>
       (-500.0 <= X and X <= 500.0),
     Post =>
       (-500.0 <= Y and Y <= 500.0)
     and
       (if 
          X - Float'Floor(X) < 0.5
              then 
                Y = Float'Floor(X)
              else 
                Y = Float'Ceiling(X))
       and
         (X - Y) <= 0.5 
     and 
       (X - Y) >= -0.5;
   
   --  procedure My_Copy_Sign (X : Float; S : Float; XResult : out Float) with
   --    Pre => X >= -500 and X <= 500,
   --    Post =>
   --      (if X = 0.0 then XResult = X else (if S > 0.0 then XResult = X else XResult = -X));
   
   procedure Split_Veltkamp (X : Float; X_Hi, X_Lo : out Float)
     with 
       Pre => (-100000.0 <= X and X <= 100000.0),
       Post => X = X_Hi + X_Lo;

   procedure Reduce_Half_Pi (X : in out Float; Q : out Quadrant; R : out Float) -- Might need to return number of Pi reductions here (for specification)
     with Pre  => X >= 0.0 and X <= 500.0,
     Post => 
       abs(X) <= Max_Red_Trig_Arg 
     and Real_Abs(Rf(X) - (Rf(X'Old) - (Rf(R) * Rf(Ada.Numerics.Pi / 2.0)))) <= Rf(0.001);
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
   
   procedure Approx_Sin  (X : Float; Result : out Float)
     with Pre  => (abs X) <= (Max_Red_Trig_Arg),
     Post => abs Result <= (1.0) and then
     Maximum_Relative_Error (Result) <= 2.0 * Epsilon and then
     Rabs (Rf(Result) - Real_Sin(Rf(X))) <= Rf(20.0/8388608.0);

   procedure Approx_Cos (X : Float; Result : out Float)
     with Pre  => abs (X) <= (Max_Red_Trig_Arg),
     Post => abs (Result) <= (1.0)
     and then Maximum_Relative_Error (Result)
     <= 2.0 * Epsilon and then
     Rabs (Rf(Result) - Real_Cos(Rf(X))) <= Rf(30.0/8388608.0);

   procedure Sin (X : Float; FinalResult : out Float)
     with Pre => abs (X) <= 500.0, Export, Convention => C, External_Name => "sinf",
     Post => Rabs (Rf(FinalResult) - Real_Sin(Rf(X))) <= Rf(0.001);
end libsin2;
