select sum(f1.capacity) + sum(f2.capacity) as capacity
from Flights as f1, Flights as f2,  Months as mo
where f1.origin_city = 'Seattle WA'
and f1.dest_city = 'San Francisco CA'
and f2.origin_city = 'San Francisco CA'
and f2.dest_city = 'Seattle WA'
and mo.m_month = 'July'
and f1.day_of_month = 10
and f2.day_of_month = 10
and mo.mid = f1.month_id
and mo.mid = f2.month_id;

-- 1 row in result
-- capacity
-- 25840
