with Rational_Numbers.IO;
separate(Rational_Reckoner.Process)
procedure Get_Rational(R: out Rational)
is
begin
   loop
      begin
         Rational_Numbers.IO.Get(R); -- exceptions issue
         exit;
      exception
         when Data_Error => -- the handler for
                            -- the exception defined in IO.Get
            Skip_Line; New_Line;
            Put_Line("Not a rational, try again ");
            Put('#');
      end;
   end loop;
end Get_Rational;
