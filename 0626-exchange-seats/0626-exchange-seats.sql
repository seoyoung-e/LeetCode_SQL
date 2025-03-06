# Write your MySQL query statement below
SELECT id
    , case when id= (select count(*) from seat) and id%2=1 then student #마지막 홀수번째 것
    when id%2=1 then lead(student,1) over(order by id)
    when id%2=0 then lag(student,1) over(order by id)
    end as student
FROM Seat