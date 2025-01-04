# Write your MySQL query statement below
with d as (select delivery_id,customer_id , 
    case when order_date=customer_pref_delivery_date then 1 else 0 end as state,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date ) as n
from Delivery)

select sum(state)/count(*)*100 as immediate_percentage
from d where n=1;