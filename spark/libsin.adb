with Ada.Numerics; use Ada.Numerics;

package body libsin with SPARK_Mode is
   subtype Quadrant is Integer range 0 .. 3;

   function Multiply_Add (X, Y, Z : Float) return Float is (X * Y + Z);

   procedure Split_Veltkamp (X : Float; X_Hi, X_Lo : out Float)
      with Post => X = X_Hi + X_Lo;

   procedure Split_Veltkamp (X : Float; X_Hi, X_Lo : out Float) is
      M : constant Float := 0.5 + 2.0**(1 - Float'Machine_Mantissa / 2);
   begin
      X_Hi := X * M - (X * M - X);
      X_Lo := X - X_Hi;
   end Split_Veltkamp;

   procedure Reduce_Half_Pi (X : in out Float; Q : out Quadrant)
     with Pre  => X >= 0.0,
     Post => abs (X) <= Max_Red_Trig_Arg;
   
   procedure Reduce_Half_Pi_Large (X : in out Float;  N : Float; Q : out Quadrant);

   procedure Reduce_Half_Pi (X : in out Float; Q : out Quadrant) is
      K      : constant       := Pi / 2.0;
      Bits_N : constant       := 9;
      Max_N  : constant       := 2.0**Bits_N - 1.0;
      Max_X  : constant Float := Float'Pred (K * Max_N);
      Bits_C : constant       := Float'Machine_Mantissa - Bits_N;
      C1     : constant Float := Float'Leading_Part (K, Bits_C);
      C2     : constant Float := Float'Leading_Part (K - C1, Bits_C);
      C3     : constant Float := Float'Leading_Part (K - C1 - C2, Bits_C);
      C4     : constant Float := K - C1 - C2 - C3;
      N      : constant Float := Float'Machine_Rounding (X * K**(-1));

   begin
      if abs X < Max_X then

         --  X is in the range for which strict accuracy can be provided

         X := (((X - N * C1) - N * C2) - N * C3) - N * C4;
         Q := Integer (N) mod 4;

      elsif not X'Valid then

         --  X is an infinity or NaN

         X := X - X;
         Q := 0;

      else
         Reduce_Half_Pi_Large (X, N, Q);
      end if;
   end Reduce_Half_Pi;
   
   procedure Reduce_Half_Pi_Large (X : in out Float; N : Float; Q : out Quadrant) is
      type Int_64 is range -2**63 .. 2**63 - 1; -- used for conversions

      HM : constant Positive := Float'Machine_Mantissa / 2;
      C1 : constant Float := Float'Leading_Part (Half_Pi, HM);
      C2 : constant Float := Float'Leading_Part (Half_Pi - C1, HM);
      C3 : constant Float := Float'Leading_Part (Half_Pi - C1 - C2, HM);
      C4 : constant Float := Half_Pi - C1 - C2 - C3;

      K    : Float := N;
      K_Hi : Float;
      K_Lo : Float;

   begin
      Q := 0;

      loop
         Split_Veltkamp (X => K, X_Hi => K_Hi, X_Lo => K_Lo);

         X := Multiply_Add (-K_Hi, C1, X);
         X := Multiply_Add (-K_Hi, C2, Multiply_Add (-K_Lo, C1, X));
         X := Multiply_Add (-K_Hi, C3, Multiply_Add (-K_Lo, C2, X));
         X := Multiply_Add (-K_Hi, C4, Multiply_Add (-K_Lo, C3, X));
         X := Multiply_Add (-K_Lo, C4, X);

         if abs K < 2.0**62 or else abs K_Lo <= 2.0**62 then
            Q := Quadrant ((Int_64 (Q) + Int_64 (N)) mod 4);
         end if;

         exit when X in -0.26 * Pi .. 0.26 * Pi;

         K := Float'Machine_Rounding (X * Half_Pi**(-1));
      end loop;
   end Reduce_Half_Pi_Large;
   
   function Compute_Horner (P : Polynomial; X : Float) return Float is
      Result : Float := P (P'Last);

   begin
      for P_j of reverse P (P'First .. P'Last - 1) loop
         Result := Multiply_Add (Result, X, P_j);
      end loop;

      return Result;
   end Compute_Horner;

   function Approx_Sin  (X : Float) return Float is
      --  Note: The reference tables named below for sine lists constants
      --  for sin((pi/4) * x) ~= x * P (x^2), in order to get sin (x),
      --  the constants have been adjusted by division of appropriate
      --  powers of (pi/4) ^ n, for n 1,3,5, etc.
      Sin_P  : constant Polynomial :=
           (1 => Exact (-0.16666_65022),
            2 => Exact (0.83320_16396E-2),
            3 => Exact (-0.19501_81843E-3));

      Sqrt_Epsilon_LF : constant Long_Float :=
        Sqrt_2 ** (1 - Long_Float'Machine_Mantissa); -- substitute Long_Long_Float'Machine_Mantissa 
                                                          -- Get rid of exacts, long_long_floats

      G  : constant Float := X * X;

   begin
      if abs X <= Exact (Sqrt_Epsilon_LF) then
         return X;
      end if;

      return Multiply_Add (X, Compute_Horner (Sin_P, G) * G, X);
   end Approx_Sin;

   function Sin (X : Float) return Float is

      --  Math based implementation using Hart constants
      Y      : Float := abs X;
      Q      : Quadrant;
      Result : Float;

   begin
      Reduce_Half_Pi (Y, Q);

      Result := (if Q mod 2 = 0 then Approx_Sin (Y) else Approx_Cos (Y));

      return Float'Copy_Sign (1.0, X) * (if Q >= 2 then -Result else Result);
   end Sin;

   function Approx_Cos (X : Float) return Float is
      --  Note: The reference tables named below for cosine lists
      --  constants for cos((pi/4) * x) ~= P (x^2), in order to get
      --  cos (x), the constants have been adjusted by division of
      --  appropriate  powers of (pi/4) ^ n, for n 0,2,4,6 etc.
      Cos_P : constant Polynomial :=
        (0 => Exact (0.99999_99999),
         1 => Exact (-0.49999_99957),
         2 => Exact (0.41666_61323E-1),
         3 => Exact (-0.13888_52915E-2),
         4 => Exact (0.24372_67909E-4));
   begin
      return Compute_Horner (Cos_P, X * X);
   end Approx_Cos;

end libsin;
