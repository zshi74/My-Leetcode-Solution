/* Write your T-SQL query statement below */

select top 1 person_name
from (select person_name, 
      sum(weight) over (order by turn) as running_total
      from queue) t
where running_total <= 1000
order by running_total desc
