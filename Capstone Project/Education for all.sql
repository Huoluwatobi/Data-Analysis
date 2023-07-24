select *
from donor_data;

select *
from donation_data;

--4. Total donation made by frequncy of donation

select donation_frequency, sum(donation)
from donor_data
join donation_data on donation_data.id=donor_data.id
group by donation_frequency;

--10. Top 10 cars driven by the highest donors

select donor_data.id, first_name, last_name, sum(donation), car
from donor_data
join donation_data on donation_data.id = donor_data.id
group by donor_data.id, first_name, last_name, car
order by sum(donation) desc
limit 10;