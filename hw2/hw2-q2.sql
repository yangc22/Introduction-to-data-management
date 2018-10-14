select c.c_name as name, f1.flight_num as f1_flight_num, f1.origin_city as f1_origin_city, f1.dest_city as f1_dest_city, f1.actual_time as f1_actual_time, f2.flight_num as f2_flight_num, f2.origin_city as f2_origin_city, f2.dest_city as f2_dest_city, f2.actual_time as f2_actual_tim, f1.actual_time + f2.actual_time as actual_time
from Flights as f1, Flights as f2, Carriers as c
Where f1.dest_city = f2.origin_city
AND c.cid = f1.carrier_id
AND c.cid = f2.carrier_id
AND f1.origin_city = 'Seattle WA'
AND f2.dest_city = 'Boston MA'
AND f1.month_id = 7
AND f1.day_of_month = 15
AND f1.month_id = f2.month_id
AND f1.day_of_month = f2.day_of_month
AND (f1.actual_time + f2.actual_time) < 420;

-- count number of rows from result
-- 1472 rows.
select count(*)
from Flights f1, Flights f2, Carriers c
Where f1.dest_city = f2.origin_city
AND c.cid = f1.carrier_id
AND c.cid = f2.carrier_id
AND f1.origin_city = 'Seattle WA'
AND f2.dest_city = 'Boston MA'
AND f1.month_id = 7
AND f1.day_of_month = 15
AND f1.month_id = f2.month_id
AND f1.day_of_month = f2.day_of_month
AND (f1.actual_time + f2.actual_time) < 420;
