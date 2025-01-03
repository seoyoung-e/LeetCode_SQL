# Write your MySQL query statement below
select s.product_id, year as first_year, quantity, price
from sales s inner join product p on s.product_id=p.product_id
where year=(
    select min(year) from sales WHERE product_id = s.product_id
)