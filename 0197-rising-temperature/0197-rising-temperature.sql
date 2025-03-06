select id
from (select *, 
    lag(recordDate) over(order by recordDate) as prevdate,
    lag(temperature) over(order by recordDate) as prevtemp
    from Weather)c
where temperature>prevtemp and recordDate=date_add(prevdate, interval 1 day)