# Write your MySQL query statement below
select * from Users
where mail REGEXP '^[a-zA-Z]' 
and mail regexp '[a-zA-Z0-9_.-]'
and mail like '%@leetcode.com'     