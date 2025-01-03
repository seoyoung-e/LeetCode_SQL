select p.product_id , 
    case when SUM(u.units) IS NULL OR SUM(u.units) = 0 THEN 0
    else round(sum(price*units)/sum(units),2) end as average_price 
from Prices p left join UnitsSold u
on p.product_id=u.product_id 
and u.purchase_date between p.start_date and p.end_date
group by p.product_id;