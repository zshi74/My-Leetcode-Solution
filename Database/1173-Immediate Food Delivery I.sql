# Write your MySQL query statement below

select round((select count(*)
        from delivery
        where order_date = customer_pref_delivery_date) /
        count(*) * 100, 2) as immediate_percentage
from delivery 