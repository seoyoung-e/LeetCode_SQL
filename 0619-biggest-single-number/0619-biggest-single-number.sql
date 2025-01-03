select max(num) as num
from(
    select num, count(num) as cnt from MyNumbers group by 1
) q
where cnt=1;
