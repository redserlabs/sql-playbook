-- Title: Data Science Skills
-- Source: DataLemur (Interview - Easy, LinkedIn)
-- Link: https://datalemur.com/questions/matching-skills
-- Concepts: WHERE, IN, GROUP BY, HAVING, COUNT, ORDER BY

/*
Approach:
- Filter to the 3 required skills
- Group by candidate_id
- Keep only candidates who have all 3 skills (COUNT(skill) = 3)
- Order by candidate_id
*/

SELECT
  candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id;