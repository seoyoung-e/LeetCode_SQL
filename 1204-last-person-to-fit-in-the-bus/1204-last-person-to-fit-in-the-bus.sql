# Write your MySQL query statement below
with d as (select turn, person_id, person_name, weight
    ,sum(weight) over(order by turn) as total_weight
from queue)



select distinct last_value(person_name) over() as person_name
from d where total_weight<=1000;

