# Write your MySQL query statement below

select customer_id from customer c
group by customer_id having count(DISTINCT product_key)= (select count(*) from product);