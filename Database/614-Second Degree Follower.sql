# Write your MySQL query statement below

select t1.follower, count(distinct t2.follower) as num
from follow t1
join follow t2
on t1.follower = t2.followee
group by t1.follower
order by t1.follower