#1174. Immediate Food Delivery II

select round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end)/
            count(distinct customer_id) * 100, 2) as immediate_percentage

from delivery
where (customer_id, order_date) in 
                                (select customer_id, min(order_date) as min_date
                                 from delivery
                                 group by customer_id)