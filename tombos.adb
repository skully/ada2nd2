with ada.text_io, arraygen,ada.integer_text_io;


procedure tombos is

package int_arraygen is new arraygen(Integer, "<", 0); use int_arraygen;
max: integer;
parancs: integer;

---------------------------------------------------------------------------------
procedure betesz(v: in out arrayrecord) is

     e:integer;

begin
     ada.text_io.put("Amit be szeretnenk tenni /integer/:");
     ada.integer_text_io.get(e);
     insert(v,e);
end; 

-------------------

procedure keres(v: in out arrayrecord) is

     e:integer;

begin
     ada.text_io.put("Amit meg szeretnek keresni /integer/:");
     ada.integer_text_io.get(e);
     if findefficiency(v,e) >= 0
     then
          ada.text_io.put_line(integer'image(findefficiency(v,e)) & " ciklus lefuttatasaval sikeult megtalalni a szamot.");
     else
          ada.text_io.Put_Line("Sajnos nem talaltuk az elemet.");
     end if;
end; 






----------------------------------------------------------------------------------





begin


     ada.text_io.Put( "Mekkora tombot szeretnenk hasznalni? " ); 
     ada.integer_text_io.Get(Max);
     declare
          V: arrayrecord(Max);
     begin
	loop
            ada.text_io.Put_Line("Elvegezheto tevekenysegek: beszuras (1), kereses (2), kilepes (0)");
            ada.integer_text_io.Get(Parancs);
            case Parancs is
                when 1 => Betesz(V);
                when 2 => keres(V);
                when 0 => exit;
                when others => null;
            end case;
        end loop;

     end;







end tombos;

