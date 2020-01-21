package body Taylor_Sine 
with SPARK_Mode
is
   function Taylor_Sin (X : Float) return Float is
   begin
      return (X * (1.0 - (X * X) * (1.0 / 6.0 - (X * X) * (1.0 / 120.0 - (X * X) / 5040.0))));
   end Taylor_Sin;
   
end Taylor_Sine;
