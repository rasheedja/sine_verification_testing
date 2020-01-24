with Reals; use Reals;

package Taylor_Sine 
with SPARK_Mode
is

   function Taylor_Sin (X : Float) return Float with
     Pre => (0.0 <= X and X <= 0.75),
     Post => Real_Abs(Real_Sin (Real_From_Float (X)) - Real_From_Float(Taylor_Sin'Result)) <= Real_From_Float(0.00001);

end Taylor_Sine;
