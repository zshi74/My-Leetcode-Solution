# Write your MySQL query statement below

select first_login as login_date, count(*) as user_count
from (select user_id, min(activity_date) as first_login
      from traffic
      where activity = 'login'
      group by user_id) first
where datediff("2019-06-30", first_login) <= 90
group by first_login
