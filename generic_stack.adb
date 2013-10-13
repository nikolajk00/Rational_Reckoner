package body Generic_Stack is

   type Table is array (Positive range <>) of Item;
   Space : Table(1 .. Size);
   Index : Natural := 0;

   procedure Push(E : in Item) is
   begin
      if Index >= Size then
         raise Overflow;
      end if;
      Index := Index + 1;
      Space(Index) := E;
   end Push;

   function Pop return Item is
   begin
      if Index = 0 then
         raise Underflow;
      end if;
      Index := Index - 1;
      return Space(Index + 1);
   end Pop;

end Generic_Stack;
