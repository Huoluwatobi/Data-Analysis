CREATE TABLE Salaries(
	numbers INTEGER,
	work_year INTEGER,
	experience_level VARCHAR(5),
	employment_type VARCHAR(5),
	job_title VARCHAR (50),
	salary INTEGER,
	salary_currency VARCHAR (5),
	salary_in_usd DECIMAL(10,2),
	employee_residence VARCHAR (5),
	remote_ratio INTEGER,
	company_location VARCHAR (5),
	company_size VARCHAR (5)
	);
	
select * 
from salaries;

--how to drop a column in SQL

alter table salaries
drop column numbers;

select distinct job_title, count (*)
from salaries
group by job_title;


--1 How many data analytics job listings are in the data
select count (*)
from salaries;

--2 What is the average slary for data analytics jobs across all locations
select company_location, round(avg(salary_in_usd),2) as avg_sal
from salaries
group by 1
order by 2 desc;

--3. What is the most common experience required for a data analytics job
select experience_level, count(*)
from salaries
group by experience_level
order by 2 desc
limit 1;

select max (experience_level), count (*)
from salaries
where experience_level = 'SE';

--4. what is the most common employment type
select employment_type, count(*)
from salaries
group by 1
order by 2 desc;

select max (employment_type), count (*)
from salaries
where employment_type = 'FT';

--5 What is the salary range for remote data analytics jobs?
select remote_ratio, min(salary_in_usd) min_sal, max(salary_in_usd) max_sal
from salaries
where remote_ratio =100
group by 1

select min(salary_in_usd) min_sal, max(salary_in_usd) max_sal
from salaries
where remote_ratio =100;

--6. Which location has the highest number of data analytics job listings
select company_location, count(*)
from salaries
group by 1
order by 2 desc
limit 1;

--7. What is the average salary for job titles containing the word "data analyst"
select job_title, round(avg(salary_in_usd),2) avg_sal
from salaries
where job_title = 'Data Analyst'
group by 1;

select round(avg(salary_in_usd),2) avg_sal
from salaries
where job_title = 'Data Analyst';

--8. What is the distribution of data analyst job by company distribution
select job_title, company_size, count (*)
from salaries
where job_title = 'Data Analyst'
group by 1, 2;

select company_size, count (*)
from salaries
where job_title = 'Data Analyst'
group by 1 
order by 2;