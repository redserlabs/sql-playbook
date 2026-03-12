-- Title: SQL HAVING Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-having-practice-exercise
-- Concepts: GROUP BY, HAVING, COUNT

/*
Approach:
- Group by candidate_id
- Keep candidates with more than 2 skills
*/

SELECT
  candidate_id
FROM candidates
GROUP BY candidate_id
HAVING COUNT(skill) > 2;