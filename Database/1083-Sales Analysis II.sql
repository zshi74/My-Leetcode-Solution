# Write your MySQL query statement below

select t1.buyer_id
from sales t1
join product t2 on t1.product_id = t2.product_id 
group by t1.buyer_id
having sum(case when t2.product_name = 'S8' THEN 1 ELSE 0 END) > 0 
and sum(case when t2.product_name = 'iPhone' THEN 1 ELSE 0 END) = 0
