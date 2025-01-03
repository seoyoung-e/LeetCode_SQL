# Write your MySQL query statement below
select contest_id , round(count(r.user_id)/3*100,2) as percentage
from Register r inner join users u on r.user_id=u.user_id
GROUP BY r.contest_id
order by percentage desc, contest_id;