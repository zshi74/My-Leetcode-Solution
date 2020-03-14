# Write your MySQL query statement below

select distinct t1.customer_id
from customer t1
join product t2 on t1.product_key = t2.product_key
group by t1.customer_id
having count(distinct t1.product_key) = (select count(distinct product_key)
                                         from product)
