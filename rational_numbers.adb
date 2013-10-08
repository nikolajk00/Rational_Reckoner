with Rational_Numbers.Slave;
with Rational_Numbers.IO;
with Ada.Text_IO, Ada.Integer_Text_IO; use Ada;

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
   end "*";

function "/" (X: Rational; Y: Rational) return Rational is
   temp: Rational;
   begin
      if X.Num < 0 then
         temp := Slave.Normal(((-1)*Y.Num * X.Den, Y.Den * abs X.Num));
      else
         temp := Slave.Normal((Y.Num * X.Den, Y.Den * X.Num));
      end if;
      return temp;
   end "/";
function "+" (X: Rational; Y: Rational) return Rational is
   N, D: Integer;
   begin
      D := X.Den * Y.Den;
      N := Y.Den*X.Num + X.Den*Y.Num;
      return Slave.Normal((N,D));
   end "+";


function Denominator(R: Rational) return Positive is
   begin
      return R.Den;
   end Denominator;
end Rational_Numbers;
