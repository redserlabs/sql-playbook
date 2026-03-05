-- Title: SQL WHERE AND Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-where-and-practice-exercise
-- Concepts: WHERE, AND, comparison operators

/*
Approach:
- Apply all filters with AND
- Note: <> is the “standard” SQL for “not equal” (Postgres also accepts !=)
*/

SELECT *
FROM reviews
WHERE stars >= 4
  AND review_id < 6000
  AND review_id > 2000
  AND user_id <> 142;