# Write your MySQL query statement below
select distinct product.product_id, product.product_name
from sales
join product on sales.product_id = product.product_id
where sales.product_id not in (select product_id
                         from sales 
                         where sale_date not between "2019-01-01" and "2019-03-31")
order by product.product_id 