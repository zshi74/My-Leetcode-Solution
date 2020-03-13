# Write your MySQL query statement below

select round(min(sqrt((t1.x - t2.x) * (t1.x - t2.x) + (t1.y - t2.y)*(t1.y - t2.y))),2) as shortest
from point_2d t1, point_2d t2
where t1.x != t2.x or t1.y != t2.y