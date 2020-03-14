# Write your MySQL query statement below

select t1.product_id, sum(t1.quantity) as total_quantity
from sales t1
left join product t2 on t1.product_id = t2.product_id
group by t1.product_id