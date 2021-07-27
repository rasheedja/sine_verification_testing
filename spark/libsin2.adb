with Ada.Numerics; use Ada.Numerics;

package body libsin2 with SPARK_Mode is
   
   function Multiply_Add (X, Y, Z : Float) return Float is (X * Y + Z);
   
   function My_Machine_Rounding (X : Float) return Float is
      Floor_X : Float := Float'Floor   (X);
      Ceil_X  : Float := Float'Ceiling (X);
      
      Floor_X_Dist : Float := abs (X - Floor_X);
      Ceil_X_Dist  : Float := abs (X - Ceil_X);
   begin
      if Floor_X_Dist < Ceil_X_Dist then
         return Float (Floor_X);
      else 
         return Float (Ceil_X);
      end if;
   end My_Machine_Rounding;

   function My_Copy_Sign (X : Float; S : Float) return Float is
   begin
      if X = 0.0 then
        return X;
      else 
         if S > 0.0 then
            return X;
         else
            return -X;
         end if;
      end if;
   end My_Copy_Sign;

   procedure Split_Veltkamp (X : Float; X_Hi, X_Lo : out Float) is
      M : constant Float := 0.5 + 2.0**(1 - Float'Machine_Mantissa / 2);
   begin
      X_Hi := X * M - (X * M - X);
      X_Lo := X - X_Hi;
   end Split_Veltkamp;
   
   procedure Reduce_Half_Pi (X : in out Float; Q : out Quadrant; R : out Integer) is
      K      : constant       := Pi / 2.0;
      Bits_N : constant       := 9;
      Max_N  : constant       := 2.0**Bits_N - 1.0;
      Max_X  : constant Float := Float'Pred (K * Max_N);
      Bits_C : constant       := Float'Machine_Mantissa - Bits_N;
      --  C1     : constant Float := Float'Leading_Part (K, Bits_C);
      --  C2     : constant Float := Float'Leading_Part (K - C1, Bits_C);
      --  C3     : constant Float := Float'Leading_Part (K - C1 - C2, Bits_C); 
      -- JR : Replace use of Leading_Part with actual values from calling Leading_Part with these args
      C1     : constant Float := 1.57073974609375;
      C2     : constant Float := 0.0000565797090530395508;
      C3     : constant Float := 0.000000000992088189377682284;
      C4     : constant Float := K - C1 - C2 - C3;
      N      : constant Float := My_Machine_Rounding (X * K**(-1));
   begin
      X := (((X - N * C1) - N * C2) - N * C3) - N * C4;
      Q := Integer (N) mod 4; -- Return Integer (N) for specification
      R := Integer (N);
   end Reduce_Half_Pi;
   
   --  procedure Reduce_Half_Pi_Large (X : in out Float; N : Float; Q : out Quadrant; R : out Integer) is
   --     type Int_64 is range -2**63 .. 2**63 - 1; -- used for conversions
   --  
   --     HM : constant Positive := Float'Machine_Mantissa / 2;
   --     C1 : constant Float := 1.5703125;
   --     C2 : constant Float := 0.000483751296997070313;
   --     C3 : constant Float := 0.0000000754953362047672272;
   --     C4 : constant Float := Half_Pi - C1 - C2 - C3;
   --  
   --     K    : Float := N;
   --     K_Hi : Float;
   --     K_Lo : Float;
   --  
   --  begin
   --     Q := 0;
   --     R := 0;
   --  
   --     loop
   --        Split_Veltkamp (X => K, X_Hi => K_Hi, X_Lo => K_Lo);
   --  
   --        X := Multiply_Add (-K_Hi, C1, X);
   --        X := Multiply_Add (-K_Hi, C2, Multiply_Add (-K_Lo, C1, X));
   --        X := Multiply_Add (-K_Hi, C3, Multiply_Add (-K_Lo, C2, X));
   --        X := Multiply_Add (-K_Hi, C4, Multiply_Add (-K_Lo, C3, X));
   --        X := Multiply_Add (-K_Lo, C4, X);
   --  
   --        if abs K < 2.0**62 or else abs K_Lo <= 2.0**62 then
   --           Q := Quadrant ((Int_64 (Q) + Int_64 (N)) mod 4);
   --           R := Integer (Int_64 (Q) + Int_64 (N));
   --        end if;
   --  
   --        exit when X in -0.26 * Pi .. 0.26 * Pi;
   --  
   --        K := My_Machine_Rounding (X * Half_Pi**(-1));
   --     end loop;
   --  end Reduce_Half_Pi_Large;
   
   --  function Compute_Horner (P : Polynomial; X : Float) return Float is
   --     Result : Float := P (P'Last);
   --  
   --  begin
   --     for P_j of reverse P (P'First .. P'Last - 1) loop
   --        Result := Multiply_Add (Result, X, P_j);
   --     end loop;
   --  
   --     return Result;
   --  end Compute_Horner;

   function Exact (X : Long_Float) return Float is (Float (X));
   
   function Approx_Sin  (X : Float) return Float is
      --  Note: The reference tables named below for sine lists constants
      --  for sin((pi/4) * x) ~= x * P (x^2), in order to get sin (x),
      --  the constants have been adjusted by division of appropriate
      --  powers of (pi/4) ^ n, for n 1,3,5, etc.
      --  Sin_P  : constant Polynomial :=
      --       (1 => Float(Long_Float (-0.16666_65022)),
      --        2 => Float(Long_Float (0.83320_16396E-2)),
      --        3 => Float(Long_Float (-0.19501_81843E-3)));

      Sqrt_Epsilon_LF : constant Long_Float :=
        Sqrt_2 ** (1 - Long_Float'Machine_Mantissa); -- substitute Long_Long_Float'Machine_Mantissa 
                                                          -- Get rid of exacts, long_long_floats

      G  : constant Float := X * X;
      
      -- Compute_Horner Manually
      H0 : constant Float := (-0.19501_81843E-3);
      H1 : constant Float := (H0 * G + (0.83320_16396E-2));
      H2 : constant Float := (H1 * G + (-0.16666_65022));
   begin
      if abs X <= Float(Long_Float (Sqrt_Epsilon_LF)) then
         return X;
      end if;

      return (X * (H2 * G) + X);
   end Approx_Sin;

   function Sin (X : Float) return Float is

      --  Math based implementation using Hart constants
      Y      : Float := abs X;
      Q      : Quadrant;
      R      : Integer;
      Result : Float;

   begin
      Reduce_Half_Pi (Y, Q, R);

      Result := (if Q mod 2 = 0 then Approx_Sin (Y) else Approx_Cos (Y));

      return My_Copy_Sign (1.0, X) * (if Q >= 2 then -Result else Result);
   end Sin;

   function Approx_Cos (X : Float) return Float is
      --  Note: The reference tables named below for cosine lists
      --  constants for cos((pi/4) * x) ~= P (x^2), in order to get
      --  cos (x), the constants have been adjusted by division of
      --  appropriate  powers of (pi/4) ^ n, for n 0,2,4,6 etc.
      --  Cos_P : constant Polynomial :=
      --    (0 => (0.99999_99999),
      --     1 => (-0.49999_99957),
      --     2 => (0.41666_61323E-1),
      --     3 => (-0.13888_52915E-2),
      --     4 => (0.24372_67909E-4));
      
      G  : constant Float := X * X;
      
      H0 : constant Float := (0.24372_67909E-4);	
      H1 : constant Float := (H0 * G + (-0.13888_52915E-2));
      H2 : constant Float := (H1 * G + (0.41666_61323E-1));
      H3 : constant Float := (H2 * G + (-0.49999_99957));
      H4 : constant Float := (H3 * G + (0.99999_99999));
   begin
      return H4;
   end Approx_Cos;

end libsin2;
