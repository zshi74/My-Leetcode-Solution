# Write your MySQL query statement below

select t3.project_id, t3.employee_id
from project t3
join employee t4 on t3.employee_id = t4.employee_id
where t4.experience_years) IN (select t1.project_id, max(t2.experience_years)
                                from project t1
                                join employee t2 on t1.employee_id = t2.employee_id
                                group by t1.project_id)