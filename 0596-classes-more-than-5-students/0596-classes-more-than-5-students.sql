# Write your MySQL query statement below
select class
from (select class, count(*) as n
    from courses group by class) q
where n>=5;
