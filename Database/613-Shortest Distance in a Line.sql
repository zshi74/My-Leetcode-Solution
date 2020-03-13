# Write your MySQL query statement below

select min(abs(t1.x - t2.x)) as shortest
from point t1, point t2
where t1.x != t2.x