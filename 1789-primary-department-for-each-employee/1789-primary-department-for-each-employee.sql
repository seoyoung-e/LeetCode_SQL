(select employee_id, department_id from employee where primary_flag='Y')
union
(SELECT employee_id, department_id 
from employee 
group by employee_id having count(*) = 1)
