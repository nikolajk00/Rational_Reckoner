with Ada.Text_IO;
use  Ada.Text_IO;
procedure Rational_Reckoner
is
   C: Character; -- as we just remarked at the pic. 2.7
   procedure Process(C: Character)
   is separate; -- the stub for Process; file rational_reckoner-process is required!
begin
   Put("Welcome to the Rational Reckoner");
   New_Line(2);
   Put_Line("Operations are + - * / ? ! plus eXit");
   Put_Line("Input rational by #[sign]digits/digits");
   Rat_Stack.Clear; -- !!! You must decomment operations in the Rat_Stack unit!
   loop
      B:
      begin --!!!!!!! protection of loop body
         Get(C); -- Let C be character defined in the declarative part
         process(C);-- Let Process be procedure defined in the declarative part
      exception  -- !!!!! OK now!
         when others =>
            New_Line;
            Put_Line("Stack overflow/underflow or Unexpected character");
            exit;
      end B; --!!!!!!!
   end loop;
   New_Line;Put_Line("Finished");
   Skip_Line(2);
end Rational_Reckoner;
