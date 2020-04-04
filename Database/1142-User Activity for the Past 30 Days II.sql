# Write your MySQL query statement below


select ifnull(round(sum(x) / count(user_id),2),0) as average_sessions_per_user
from (select user_id, count(distinct session_id) as x
      from activity
      where activity_date between '2019-06-28' and '2019-07-27'
      group by user_id) t
      