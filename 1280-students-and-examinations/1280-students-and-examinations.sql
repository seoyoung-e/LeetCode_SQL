with t as (select * from students cross join subjects)

select t.student_id, t.student_name, t.subject_name, count(e.student_id) as attended_exams 
from t left join Examinations e 
on t.student_id =e.student_id and t.subject_name =e.subject_name 
group by 1,2,3 order by 1,3;