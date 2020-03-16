# Write your MySQL query statement below

select t1.book_id, t1.name
from books t1
left join (select book_id, sum(quantity) as book_sold
           from orders
           where dispatch_date between '2018-06-23' and '2019-06-23'
           group by book_id) t2
on t1.book_id = t2.book_id
where t1.available_from < '2019-05-23' and (t2.book_sold is null or book_sold < 10)
order by t1.book_id
1098. Unpopular Books
