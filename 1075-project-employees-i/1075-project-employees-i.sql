# Write your MySQL query statement below
select project_id, round(sum(experience_years)/count(experience_years),2) as average_years 
from employee e inner join project p 
on e.employee_id =p.employee_id 
group by 1;