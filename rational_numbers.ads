package Rational_Numbers is -- 1-st compilation unit
   type Rational is private;
   function "-" (X: Rational) return Rational;
   function "+" (X: Rational; Y: Rational) return Rational;
   function "*" (X: Rational; Y: Rational) return Rational;
   function "/" (X: Rational; Y: Rational) return Rational;


   function Denominator(R: Rational) return Positive;
private
   type Rational is
      record
         Num: Integer := 0; -- numerator
         Den: Positive := 1; -- denominator
      end record;
end Rational_Numbers;
