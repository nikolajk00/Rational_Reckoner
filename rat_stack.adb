with Rat_Stack.Data;
package body Rat_Stack
is
   use Data;
   procedure Clear is
   begin
      Top := 0;
   end Clear;
   procedure Push(R: in Rational) is
   begin
      if Top = Max then
         null;
      end if;
      Top := Top + 1;
      Stack(Top) := R;
   end Push;
   function Pop return Rational is
   begin
      if Top = 0 then
         null;
      end if;
      Top := Top - 1;
      return Stack(Top + 1);
   end Pop;
end Rat_Stack;
