# Write your MySQL query statement below
select id, SUM(count) as num
from (
    select requester_id  AS id, count(*) AS count from RequestAccepted as r
    group by requester_id
union all
    select accepter_id  AS id, count(*) AS count from RequestAccepted as a
    group by accepter_id
)c
GROUP BY id order by num desc limit 1;
