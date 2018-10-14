-- Find the day of the week with the longest average arrival delay. 
-- Return the name of the day and the average delay.
select w.day_of_week as day_of_week, avg(f.arrival_delay) as delay
from Weekdays as w, Flights as f
Where w.did = f.day_of_week_id
group by f.day_of_week_id
order by delay
limit 1;

-- The result is:
-- day_of_week|delay
-- Sunday|6.86517953341103
