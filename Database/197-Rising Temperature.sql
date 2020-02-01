## 197. Rising Temperature


SELECT b.Id
FROM Weather a,
     Weather b
WHERE b.RecordDate = date_add(a.RecordDate, interval 1 day)
      AND a.temperature < b.temperature