# 유저별 첫 로그인 date
with d as (select player_id, min(event_date) as min from Activity group by 1)

select round(count(*)/(select count(distinct player_id) from activity),2) as fraction
from d join Activity a 
on d.player_id=a.player_id and datediff(d.min, a.event_date)=-1;
