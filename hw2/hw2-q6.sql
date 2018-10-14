select c.c_name as carrier, max(f1.price, f2.price) as max_price
from Flights as f1, Flights as f2, Carriers as c
where f1.origin_city = 'Seattle WA'
and f1.dest_city = 'New York NY'
and f2.origin_city = 'New York NY'
and f2.dest_city = 'Seattle WA'
and c.cid = f1.carrier_id
and c.cid = f2.carrier_id
group by c.c_name
order by max_price desc;

-- 3 rows in result
-- carrier|max_price
-- Delta Air Lines Inc.|999
-- American Airlines Inc.|996
-- JetBlue Airways|987
