# Write your MySQL query statement below
# 262. Trips and Users

SELECT Trips.Request_at As Day,
       ROUND(SUM(Trips.Status != 'completed') / count(*),2) As 'Cancellation Rate'
FROM Trips 
JOIN Users u1 ON Trips.Client_Id = u1.Users_Id
JOIN Users u2 ON Trips.Driver_Id = u2.Users_Id
WHERE u1.Banned = 'No' 
      AND u2.Banned = 'No' 
      AND Trips.Request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY Trips.Request_at