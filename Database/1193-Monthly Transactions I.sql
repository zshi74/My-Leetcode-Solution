# Write your MySQL query statement below

select  concat(year(trans_date),'-', LPAD(month(trans_date), 2, '0')) as month, country,
        count(*) as trans_count,
        sum(case when state = 'approved' then 1 else 0 end ) as approved_count,
        sum(amount) as trans_total_amount, 
        sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from transactions
group by concat(year(trans_date),'-',month(trans_date)), country