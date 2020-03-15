# Write your MySQL query statement below

select project_id
from project
group by project_id
having count(employee_id) =  (select count(employee_id) as count_emp
                              from project t1
                              group by project_id
                              order by count(employee_id) desc
                              limit 1)
