with d as (select s.user_id, action, case when  action='confirmed' then 1 else 0 end as con
from Signups s left join Confirmations c on s.user_id =c.user_id)

select user_id, round(sum(con)/count(*),2) as confirmation_rate 
from d group by 1;