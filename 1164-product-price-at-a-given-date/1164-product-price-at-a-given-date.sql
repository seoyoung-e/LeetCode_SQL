SELECT DISTINCT product_id, 10 as price 
FROM Products GROUP BY 1 
HAVING min(change_date) > '2019-08-16'

union

select product_id, new_price from products
where (product_id, change_date) IN
    (SELECT product_id, MAX(change_date) as recent_date 
    FROM Products
    WHERE change_date <= '2019-08-16' GROUP BY 1)
