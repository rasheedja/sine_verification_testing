package Reals
  with SPARK_Mode, Ghost
is
   --  Package Reals is not implemented. Instead, an axiomatization of real
   --  operations is directly given in Why3, to use in GNATprove.
   pragma Annotate (GNATprove, External_Axiomatization);

   type Real is private;

   function Rfloor (X : Real) return Integer
     with Import;

   function Rceiling (X : Real) return Integer
     with Import;

   function Real_Pi return Real
     with Import;

   function "+" (X, Y : Real) return Real
     with Import;

   function "-" (X, Y : Real) return Real
     with Import;

   function "*" (X, Y : Real) return Real
     with Import;

   pragma Warnings (Off, "check would fail at run time",
     Reason => "Compiler warns that precondition cannot pass" &
               "at run time, because Real is a singleton type." &
               "This is ok as operation cannot be executed.");
   function "/" (X, Y : Real) return Real
     with Import,
          Pre => Y /= Real_From_Int(0);
   pragma Warnings (On, "check would fail at run time");

   function "<" (X, Y : Real) return Boolean
     with Import;

   function "<=" (X, Y : Real) return Boolean
     with Import;

   function ">=" (X, Y : Real) return Boolean
     with Import;

   function ">" (X, Y : Real) return Boolean
     with Import;

   function Real_From_Int (X : Integer) return Real
     with Import;

   function Real_From_Float (X : Float) return Real
     with Import;

   function Real_From_Long_Float (X : Long_Float) return Real
     with Import;

   function Real_Abs (X : Real) return Real
     with Import;

   function Real_Min (X : Real; Y : Real) return Real
     with Import;

   function Real_Max (X : Real; Y : Real) return Real
     with Import;

   function Ri (X : Integer) return Real
     with Import;

   function Rf (X : Float) return Real
     with Import;

   function Rlf (X : Long_Float) return Real
     with Import;

   function Rabs (X : Real) return Real
     with Import;

   function Real_Sin (X : Real) return Real
     with Import;

   function Real_Cos (X : Real) return Real
     with Import;

   function Real_Square (X : Real) return Real
     with Import;

   function Real_Square_Root (X : Real) return Real
     with Import;

   function Real_Pow (X, Y : Real) return Real
     with Import;

   --  function Real_Pi (X : Real) return Real;

private
   pragma SPARK_Mode (Off);

   --  The actual type used for type Real does not matter. Since the private
   --  part of package Reals is marked SPARK_Mode (Off), GNATprove treats type
   --  Real as an abstract type.
   type Real is null record;

end Reals;
