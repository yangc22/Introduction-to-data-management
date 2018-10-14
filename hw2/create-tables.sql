-- create table for carriers
create table Carriers
(cid varchar(7) primary key,
c_name varchar(83));

-- create table for month
create table Months
(mid int primary key,
m_month varchar(9));

-- create table for weekdays
create table Weekdays
(did int primary key,
 day_of_week varchar(9));

-- create table for flights
create table Flights
(fid int primary key,
month_id int,
day_of_month int,
day_of_week_id int,
carrier_id varchar(7),
flight_num int,
origin_city varchar(34),
origin_state varchar(47),
dest_city varchar(34),
dest_state varchar(46),
departure_delay int,
taxi_out int,
arrival_delay int,
canceled int,
actual_time int,
distance int,
capacity int,
price int,
FOREIGN KEY (month_id) references Months(mid)
FOREIGN KEY (carrier_id) references Carriers(cid)
FOREIGN KEY (day_of_week_id) references Weekdays(did));

-- enable foreign keys
PRAGMA foreign_keys=ON;

-- set mode
.mode csv

-- import tables
.import carriers.csv Carriers
.import months.csv Months
.import weekdays.csv Weekdays
.import flights-small.csv Flights
