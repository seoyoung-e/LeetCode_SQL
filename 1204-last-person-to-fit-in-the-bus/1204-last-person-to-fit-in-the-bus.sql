# Write your MySQL query statement below
with d as (select turn, person_id, person_name, weight
    ,sum(weight) over(order by turn) as total_weight
from queue)

select distinct last_value(person_name) over(order by total_weight
        	rows between unbounded preceding and unbounded following) as person_name
from d where total_weight<=1000;