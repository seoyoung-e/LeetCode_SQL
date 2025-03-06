# Write your MySQL query statement below
with a as (select ROW_NUMBER() OVER (ORDER BY visited_on ) AS row_num, visited_on, sum(amount) as amount
from Customer group by visited_on)

select visited_on, amount1 as amount, round(amount1/7,2) as average_amount 
from (select visited_on,row_num,
SUM(amount) OVER (ORDER BY visited_on  ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as amount1
from a) b
where row_num>6;


