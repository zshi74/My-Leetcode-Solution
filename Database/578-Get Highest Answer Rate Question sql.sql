# Write your MySQL query statement below
# 578. Get Highest Answer Rate Question

SELECT question_id as survey_log
FROM (SELECT question_id,
    SUM(CASE WHEN action = "answer" THEN 1 ELSE 0 END) As num_answer, 
    SUM(CASE WHEN action = "show" THEN 1 ELSE 0 END) As num_show
    FROM survey_log
    GROUP BY question_id) as Temp
ORDER BY (num_answer/num_show) DESC
LIMIT 1
