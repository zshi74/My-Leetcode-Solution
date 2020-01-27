/* Write your T-SQL query statement below */

# 178. Rank Scores

SELECT Score,
       Dense_rank() OVER (ORDER BY Score DESC) Rank
FROM Scores