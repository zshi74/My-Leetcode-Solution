## 574. Winning Candidate

SELECT Candidate.Name
FROM Candidate
JOIN (SELECT CandidateId, COUNT(*) as vote_nbr  
      FROM Vote
      GROUP BY CandidateId) temp ON Candidate.id = temp.CandidateId
ORDER BY vote_nbr DESC
LIMIT 1