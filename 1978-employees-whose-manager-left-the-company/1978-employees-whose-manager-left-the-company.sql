# Write your MySQL query statement below
select employee_id
from(select a.employee_id as employee_id, a.manager_id as manager_id, a.salary as salary, b.employee_id as man_left
    from Employees a left join Employees b on a.manager_id =b.employee_id)q
where man_left is null and salary < 30000;