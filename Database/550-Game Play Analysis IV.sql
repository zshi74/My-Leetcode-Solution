
# 550. Game Play Analysis IV

SELECT ROUND(SUM(CASE WHEN temp.first_log + 1 = a.event_date THEN 1 ELSE 0 END) / (COUNT(DISTINCT temp.player_id)),2) fraction
FROM (SELECT player_id, min(event_date) as first_log
      FROM Activity
      GROUP BY player_id) As temp
INNER JOIN activity a ON temp.player_id = a.player_id