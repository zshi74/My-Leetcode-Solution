# Write your MySQL query statement below

select DISTINCT t1.id,
    (CASE
     WHEN t1.p_id IS NULL THEN 'Root'
     WHEN t1.p_id IS NOT NULL AND t2.id IS NOT NULL THEN 'Inner'
     WHEN t1.p_id IS NOT NULL AND t2.id IS NULL THEN 'Leaf' END) as Type

from tree t1
left join tree t2 on t1.id = t2.p_id