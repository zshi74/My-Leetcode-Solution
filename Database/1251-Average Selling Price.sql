# Write your MySQL query statement below

select prices.product_id, 
       round(sum(prices.price * unitssold.units) / sum(unitssold.units),2) as average_price
from prices
join unitssold on prices.product_id = unitssold.product_id and (unitssold.purchase_date between prices.start_date and prices.end_date)
group by prices.product_id