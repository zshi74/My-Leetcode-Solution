# Write your MySQL query statement below

update salary
set sex = case
            when sex = 'f' then 'm'
            when sex = 'm' then 'f'
    end
where sex in ('f','m')