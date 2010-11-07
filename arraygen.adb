package body arraygen is

procedure insert(A:in out arrayrecord; E:in element) is

     last:integer:=a.items'last;

begin

     if (a.items(a.items'first)=extremal)
     then

          --number_of_items:=a.number_of_items+1;
          a.items(a.items'first):=E;
     else
          declare
          i:integer:=a.items'last;
          begin
               --megadja az utolso nem extremal-t
               while i>=a.items'first and then a.items(i) = extremal
               loop
                    i:=i-1;
               end loop;
               last:=i+1;--utolso elem
               a.items(last):=E;
          end;
               
          declare
          Temp:element;
          begin
                  
               
               for I in reverse a.items'first..last loop
                    for J in A.items'First .. I loop
                         if A.items(I) < A.items(J) then
                              Temp := A.items(J);
                              A.items(J) := A.items(I);
                              A.items(I) := Temp;
                         end if;
                    end loop;
               end loop;
           end;
                     


               
          
          
          

     end if;
end insert;



function findefficiency(A:arrayrecord; E:element) return integer is

howmany_loops:integer:=0;
found    :  boolean;
Index    :  integer;
left  : integer := a.items'First;    --elso
right : integer; --utoso utani
begin
     
          declare
          i:integer:=a.items'last;
          begin
               --megadja az utolso nem extremal-t
               while i>=a.items'first and then a.items(i) = extremal
               loop
                    i:=i-1;
               end loop;
               right:=i+1;

          end;
          

     if E < a.items (Left) then              --elso hellyel hasonlit
          Index := Left - 1;                         --0. helyre szurna be
          Found := False;                            --nem talalt
     else                                          
          loop                                       
               declare
                    Center    : constant Integer   :=
                    Left + (Right - Left) / 2;        --kozepso elem indexe
                    Candidate : constant Element :=
                    a.items (Center);                --kozepso elem
                  
               begin
                    howmany_loops:=howmany_loops+1;
                   ada.text_io.put("A cilkus " & integer'image(howmany_loops) &". futasa, a " & integer'image(Center));
                   ada.text_io.put_line(". elemmel hasonlitja a megadott elemet.");

                    if E = Candidate then           --ha egyenlo
                         Index := Center;                  --index
                         Found := True;                    --megtalaltuk
                         exit;                             --kilepes
                    end if;

                    if Right - Left <= 1 then            --ha a ket index kulonbsege negativ
                         Index := Center;                  
                         Found := False;                   --nincs meg
                         exit;
                    elsif E < Candidate then        --meg nincs meg, mert az elso reszben van
                         Right := Center;	                 --a left es a center kozott keresunk tovabb
                    else
                         Left := Center;                   --kulonben a hatso reszben van es a center es a right kozott keresunk tovabb
                    end if;
                    --ada.text_io.put_line(integer'image(howmany_loops));
                end;
            
          end loop;                                  --ciklus vege
     end if;
     if not found 
     then 
          howmany_loops:=-1;
     end if;
     
     return howmany_loops;









end findefficiency;





end arraygen;




