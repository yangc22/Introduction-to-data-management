-- Create the Edges table
create table Edges(Source int, Destination int);

insert into Edges values(10, 5);
insert into Edges values(6, 25);
insert into Edges values(1, 3);
insert into Edges values(4, 4);

-- return all columns from table Edges.
select * from Edges;

-- returns only column Source for all tuples.
select Source from Edges;

-- returns all tuples where Source > Destination.
select * from Edges where Source > Destination;

-- Now insert the tuple ('-1','2000'). Do you get an error? Why?
-- No. I think the SQLite database engine convert the value from char
-- to int automatically.
