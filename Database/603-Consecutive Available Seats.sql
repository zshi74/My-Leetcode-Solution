# Write your MySQL query statement below
# 603-Consecutive Available Seats

select distinct c1.seat_id
from cinema c1
join cinema c2
on abs(c1.seat_id - c2.seat_id) = 1 and c1.free = true and c2.free = true
order by c1.seat_id