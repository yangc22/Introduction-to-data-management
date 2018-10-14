-- List the distinct flight numbers of all flights from Seattle to Boston by Ala-- ska Airlines Inc. on Mondays.
SELECT DISTINCT f.flight_num as flight_num
FROM FLights as f, Carriers as c, Weekdays as w
WHERE f.carrier_id = c.cid
AND f.day_of_week_id = w.did
AND f.origin_city = 'Seattle WA'
AND f.dest_city = 'Boston MA'
AND c.c_name = 'Alaska Airlines Inc.'
AND w.day_of_week = 'Monday';

-- 3 rows in result.
-- flight_num
-- 12
-- 24
-- 734
