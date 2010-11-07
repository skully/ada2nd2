with ada.text_io, arraygen;


procedure tombos is

package int_arraygen is new arraygen(Integer, "<", 0); use int_arraygen;
--size: integer;


v:arrayrecord(100);





begin

Insert(v,2);
--insert(v,4);
insert(v,3);
insert(v,9);
insert(v,13);
insert(v,1337);
insert(v,37);
insert(v,42);

ada.text_io.put_line("A ciklus ennyiszer fut le: " &integer'image(findefficiency(v,4)));



end tombos;

