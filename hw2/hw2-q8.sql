select distinct c.c_name as name, sum(departure_delay) as delay
from Flights as f, Carriers as c
where f.carrier_id = c.cid
group by c.c_name
order by delay;
