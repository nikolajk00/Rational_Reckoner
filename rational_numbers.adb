with Rational_Numbers.Slave;
package body Rational_Numbers
is
   use Slave;
function "-" (X: Rational) return Rational is
   begin
      return (-X.Num, X.Den);
   end "-";
function "*" (X: Rational; Y: Rational) return Rational is
   begin
      return Slave.Normal((X.Num * Y.Num, X.Den * Y.Den));
   end;

function "/" (X: Rational; Y: Rational) return Rational is
   begin
      return Slave.Normal((X.Num * Y.Den, X.Den * Y.Num));
   end;
function "+" (X: Rational; Y: Rational) return Rational is
   N, D: Integer;
   begin
      D := X.Den * Y.Den;
      N := Y.Den*X.Num + X.Den*Y.Num;
      return Slave.Normal((N,D));
   end;


function Denominator(R: Rational) return Positive is
   begin
      return R.Den;
   end Denominator;
end Rational_Numbers;
