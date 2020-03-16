# Write your MySQL query statement below

select t1.business_id
from events t1
join (select event_type, avg(occurences) as avg_occurences
      from events
      group by event_type) t2 on t1.event_type = t2.event_type
where t1.occurences > t2.avg_occurences
group by t1.business_id
having count(t1.event_type) > 1