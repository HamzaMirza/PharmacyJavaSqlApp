select *
from station
select *
from fare
select *
from passngr
select *
from bus

Select seatn,pname,bname,fare,station,station.sid
from passngr
 join
 (
   bus 
    join
       (
	   fare
	    join
             station 
                on (fare.[sd]=station.[sid] and fare.[ss]=station.[sid])
	   )
    on bus.rid=fare.rid
 )
  on passngr.bid=bus.id
 