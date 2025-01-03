with n as (select count(*) as total from users) 

select r.contest_id , ROUND(COUNT(r.user_id) / n.total * 100, 2) AS percentage
from Register r inner join users u on r.user_id=u.user_id, n
GROUP BY r.contest_id
order by percentage desc, contest_id;



