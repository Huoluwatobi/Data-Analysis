	CREATE TABLE Surveys(
	timestamp TIMESTAMP,
	gender VARCHAR(30),
	destination VARCHAR(50),
	time_of_travel INTEGER,
	time_of_actvities VARCHAR(50),
	holiday_with VARCHAR(50),
	transportation VARCHAR (50)
	);
	
Select *
from Surveys;

Select time_of_actvities
from Surveys;

Select count (*)
from Surveys;

select transportation
from surveys;

select distinct transportation
from surveys;

select count (*)
from surveys;

select count (distinct transportation)
from surveys;

select transportation, count (*)
from surveys
group by transportation;

select transportation, count (*) as number
from surveys
group by transportation
order by 2;

select gender, count (*)
from surveys
group by gender;
select destination, count (*)
from surveys
group by destination
order by count (*) desc
limit 1;

select destination, count (*)
from surveys
group by destination
order by count (*) asc
limit 1;


Select time_of_actvities, count (*)
from Surveys
group by time_of_actvities;

Select time_of_actvities, count (*)
from Surveys
where time_of_actvities = 'Individual'
group by 1;

Select time_of_actvities, count (*)
from Surveys
where time_of_actvities = 'Group'
group by 1;

Select transportation, count (*)
from Surveys
group by transportation
order by count (*) desc;

Select holiday_with, count (*)
from Surveys
group by holiday_with
order by count (*) desc;

Select time_of_travel, count (*)
from Surveys
group by time_of_travel
order by count (*) desc
limit 1;