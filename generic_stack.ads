generic
   Size : Positive;
   type Item is private;
package Generic_Stack is
   procedure Push(E : in  Item);
   function Pop return Item;
   Overflow, Underflow : exception;
end Generic_Stack;
