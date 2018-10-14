--  returns only the name and distance of all restaurants within and 
--  including 20 minutes of your house. The query should list the
--  restaurants in alphabetical order of names (ascending order by default).
select rname, distance
from MyRestaurants
where distance <= 20
order by rname;
