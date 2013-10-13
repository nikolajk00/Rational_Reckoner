with Ada.Text_IO;
use  Ada.Text_IO;
with Rational_Numbers.IO;
--with Rat_Stack.Print; use Rat_Stack;
with Stack_Rational; use Stack_Rational;

with Rational_Numbers; use Rational_Numbers;
separate(Rational_Reckoner)-- It points that the next
                           -- unit is a subunit
procedure Process(C: Character)
is
   R, temp: Rational;
   procedure Get_Rational(R: out Rational) is separate; -- the stub for Get_Rational
begin
   if C = '#' then
      Get_Rational(R); -- Let Get_Rational be
                       -- the new slave procedure
      Push(R);
   elsif C = '-' then
      temp := -Pop;
      Push(temp);
   elsif C = '!' then
      Rational_Numbers.IO.Put(Pop);
      Put_Line("");
   elsif C = '?' then
      temp := Pop;
      Rational_Numbers.IO.Put(temp);
      Put_Line("");
      Push(temp);
   elsif C = '*' then
      Push(Pop * Pop);
   elsif C = '/' then
      Push(Pop / Pop);
   elsif C = '+' then
      Push(Pop + Pop);
   else
      Put_Line("Unknown operation");
      -- and so on for
   end if;
end Process;
