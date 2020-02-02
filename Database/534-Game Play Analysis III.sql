# Write your MySQL query statement below
# 534. Game Play Analysis III

SELECT A2.player_id, A2.event_date, SUM(A1.games_played) AS games_played_so_far
FROM Activity AS A1 
INNER JOIN Activity AS A2 ON (A1.player_id = A2.player_id 
                              AND A1.event_date <= A2.event_date)
GROUP BY A2.player_id, A2.event_date;