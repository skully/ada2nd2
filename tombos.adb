with ada.text_io, arraygen;


procedure tombos is

package int_arraygen is new arraygen(Integer, "<", 0); use int_arraygen;
--size: integer;


v:arrayrecord(5);





begin

Insert(v, 2);
insert(v,4);

insert(v,3);


end tombos;

