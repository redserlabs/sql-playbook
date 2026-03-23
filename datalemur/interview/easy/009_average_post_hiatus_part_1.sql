-- Title: Average Post Hiatus (Part 1)
-- Source: DataLemur (Interview - Easy)
-- Link: https://datalemur.com/questions/sql-average-post-hiatus-1
-- Concepts: GROUP BY, HAVING, DATE arithmetic, DATE_PART

/*
Approach:
- Filter posts in year 2021
- Keep users who posted at least twice
- Compute gap: max(post_date) - min(post_date)
*/

-- Solution:
SELECT
  user_id,
  MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between
FROM posts
WHERE DATE_PART('year', post_date::DATE) = 2021
GROUP BY user_id
HAVING COUNT(post_id) > 1;