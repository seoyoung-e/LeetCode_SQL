select product_name,unit
from Products p inner join
 (select distinct product_id,sum(unit) over(partition by product_id) as unit
    from orders
    where order_date like '2020-02-%'
)q on p.product_id =q.product_id
where unit>=100


