package body arraygen is

procedure insert(A:in out arrayrecord; E:in element) is

     last:integer:=a.items'last;

begin

     if (a.items(a.items'first)=extremal)
     then

          --number_of_items:=a.number_of_items+1;
          a.items(a.items'first):=E;
          ada.Text_io.put_line("elso ertekadas");
     else
          declare
          i:integer:=a.items'last;
          begin
               --megadja az utolso nem extremal-t
               while i>=a.items'first and then a.items(i) = extremal
               loop
                    i:=i-1;
               end loop;
               last:=i+1;
               ada.Text_io.put_line("last: "& integer'image(last));
               a.items(last):=E;
          end;
               
          declare
          Temp:element;
          begin
               --megadja az elem helyet
                  
               
               for I in reverse a.items'first..last loop
                    for J in A.items'First .. I loop
                         if A.items(I) < A.items(J) then
                              Temp := A.items(J);
                              A.items(J) := A.items(I);
                              A.items(I) := Temp;
                              ada.Text_io.put_line("megtortent csere");
                         end if;
                    end loop;
               end loop;
           end;
                     


               
          
          
          ada.Text_io.put_line("megtortent beszuras");
          

     end if;
end insert;



function findefficiency(A:arrayrecord; E:element) return integer is

begin



null;
return 0;


end findefficiency;





end arraygen;




