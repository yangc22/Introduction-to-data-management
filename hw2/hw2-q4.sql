select distinct c.c_name as name
from Carriers as c, Flights as f
where c.cid = f.carrier_id
group by f.month_id, f.day_of_month, f.carrier_id
having count(*) > 1000;

-- count the number of rows from result
-- 12 rows
