
## 512. Game Play Analysis II

SELECT a.player_id, a.device_id
FROM Activity a
WHERE (a.player_id, a.event_date) IN (SELECT player_id, MIN(event_date) AS first_log
                               FROM Activity
                               GROUP BY player_id)