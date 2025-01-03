# Write your MySQL query statement below
select sell_date, count(product) as num_sold , group_concat(product order by product) as products                     
from (select distinct * from Activities)q 
group by 1 order by 1;