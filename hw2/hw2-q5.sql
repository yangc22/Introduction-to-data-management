select c.c_name as name, cast (sum(canceled) as float) / count(fid) * 100 as percent
from Carriers as c, Flights as f
where f.origin_city = 'Seattle WA'
and c.cid = f.carrier_id
group by c.c_name
having percent > 0.5
order by percent;

-- 6 rows in result.
-- SkyWest Airlines Inc.|0.728291316526611
-- Frontier Airlines Inc.|0.840336134453782
-- United Air Lines Inc.|0.983767830791933
-- JetBlue Airways|1.00250626566416
-- Northwest Airlines Inc.|1.4336917562724
-- ExpressJet Airlines Inc.|3.2258064516129
