package body Rational_Numbers.Slave
is
   function GCD(X, Y: Natural) return Natural is
   begin
      if Y = 0 then
         return X;
      else
         return GCD(Y, X mod Y);
      end if;
   end GCD;
   function Normal(R: Rational) return Rational is
      G: Positive := GCD(abs R.Num, R.Den);
   begin
      return (R.Num/G, R.Den/G);
   end Normal;
end Rational_Numbers.Slave;
