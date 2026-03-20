-- Title: SQL Tutorial Lesson: Superheroes' Likes
-- Source: DataLemur (Interview - Medium)
-- Link: https://datalemur.com/questions/sql-case-marvel-avengers
-- Concepts: CASE, BETWEEN, ORDER BY

/*
Approach:
- Create a category based on avg_likes thresholds using CASE.
- Sort by avg_likes (descending).
*/

SELECT
  actor,
  character,
  platform,
  avg_likes,
  CASE
    WHEN avg_likes >= 15000 THEN 'Super Likes'
    WHEN avg_likes BETWEEN 5000 AND 14999 THEN 'Good Likes'
    WHEN avg_likes < 5000 THEN 'Low Likes'
  END AS category
FROM marvel_avengers
ORDER BY avg_likes DESC;