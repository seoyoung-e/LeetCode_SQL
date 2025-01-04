select distinct num as ConsecutiveNums
from(SELECT 
    num,
    LEAD(num, 1) OVER (ORDER BY id) AS next_row,
    LEAD(num, 2) OVER (ORDER BY id) AS next_next_row
FROM logs)q where num=next_row and num=next_next_row;
