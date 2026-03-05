-- Title: SQL WHERE Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-where-practice-exercise
-- Concepts: WHERE, basic SELECT

/*
Approach:
- Filter reviews to only 3-star ratings
*/

-- Solution:
SELECT user_id, stars
FROM reviews
WHERE stars = 3;