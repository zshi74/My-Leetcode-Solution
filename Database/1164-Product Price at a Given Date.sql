select distinct a.product_id, coalesce(b.new_price, 10) as price
from products a
inner join (select product_id, 
                  rank() over (partition by product_id order by change_date DESC) as xrank,
                  new_price
           from products
           where change_date<='2019-08-16') as b
on a.product_id = b.product_id and b.xrank = 1


