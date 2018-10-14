-- returns all restaurants that you like, but have not visited 
-- since more than 3 months ago.
select rname
from MyRestaurants
where likeornot = 1 and lastvisit < date('now', '-3 month');
