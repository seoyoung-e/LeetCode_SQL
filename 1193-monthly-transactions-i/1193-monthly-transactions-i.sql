# Write your MySQL query statement below
with d as (select *, substr(trans_date,1,7) as month,
            case when state='approved' then 1 else 0 end as state2 from Transactions)

select month, country, count(*) as trans_count, 
sum(state2) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state2=1 then amount else 0 end) as approved_total_amount 
from d group by 1,2;

