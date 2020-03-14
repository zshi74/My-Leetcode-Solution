# Write your MySQL query statement below

select (s1.id - 1) as id, s1.student
from seat s1
where s1.id % 2 = 0

UNION

select s2.id + 1 as id, s2.student
from seat s2
where s2.id % 2 = 1 and s2.id != (select max(id)
                                  from seat)

UNION

select s3.id, s3.student
from seat s3
where s3.id % 2 = 1 and s3.id = (select max(id)
                                from seat)
                                
order by id