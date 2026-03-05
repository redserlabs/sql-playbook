-- Title: SQL WHERE AND OR Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-where-and-or-practice-exercise
-- Concepts: WHERE, AND, OR, operator precedence

/*
Approach:
- Filter stars range
- Filter user_id among specific values
- IMPORTANT: Parentheses are required because AND is evaluated before OR
*/

SELECT *
FROM reviews
WHERE stars > 2
  AND stars <= 4
  AND (user_id = 123 OR user_id = 265 OR user_id = 362);