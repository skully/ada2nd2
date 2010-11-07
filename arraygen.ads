with ada.text_io;



generic 
     type element is private;
     with function "<" (left , right: element) return boolean is <>;
     extremal: in element;
package arraygen is

     type arrayrecord( size: positive) is limited private; --lehet hogy kell a limited, try later
     
     procedure insert(A:in out arrayrecord; E:in element); -- 
     function findefficiency(A:arrayrecord; E:element) return integer;


private
     type my_array is array( integer range <> ) of element;
     type arrayrecord (size:positive) is record
          items: my_array (1..size):=(1..size=>extremal);
          --number_of_items:integer;
     
     end record;



end arraygen;


