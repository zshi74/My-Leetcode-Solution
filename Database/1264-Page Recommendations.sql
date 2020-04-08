
select distinct(page_id) as recommended_page
from (select user2_id as user_id
      from friendship
      where user1_id = 1

      union all 

      select user1_id as user_id
      from friendship
      where user2_id = 1) as user_friends
join likes on user_friends.user_id = likes.user_id
where Likes.page_id not in (select distinct page_id
                        from likes
                        where user_id = 1)