with Ada.Text_IO, Ada.Integer_Text_IO; use Ada;
with Rational_Numbers.Slave;
package body Rational_Numbers.IO
is
   procedure Get(X: out Rational) is
      N,D: Integer; -- numerator, denominator
      C: Character; EOL: Boolean; -- end of line
   begin
      Integer_Text_IO.Get(N); -- get numerator
      Text_IO.Look_Ahead(C, EOL);

      if EOL or else C /= '/' then
         raise Text_IO.Data_Error;
      end if;

      Text_IO.Get(C);
      Integer_Text_IO.Get(D); -- get denominator

      X := Slave.Normal((N, D));-- composing the rational
   end Get;
   procedure Put(X: in Rational) is
   begin
      Integer_Text_IO.Put(X.Num, 0);
      Text_IO.Put('/');
      Integer_Text_IO.Put(X.Den, 0);
   end Put;
end Rational_Numbers.IO;
