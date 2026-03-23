-- Title: SQL Tutorial Lesson: Top-Selling Artists
-- Source: DataLemur (Interview - Medium)
-- Link: https://datalemur.com/questions/sql-cte-subquery-concert-revenue
-- Concepts: subquery, window function, RANK(), PARTITION BY, ORDER BY

/*
Approach:
- Compute revenue_per_member = concert_revenue / number_of_members
- Rank artists within each genre by revenue_per_member (desc)
- Keep only rank = 1 per genre
- Sort final output by revenue_per_member desc
*/

SELECT
  artist_name,
  concert_revenue,
  genre,
  number_of_members,
  revenue_per_member
FROM (
  SELECT
    artist_name,
    concert_revenue,
    genre,
    number_of_members,
    concert_revenue / number_of_members AS revenue_per_member,
    RANK() OVER (
      PARTITION BY genre
      ORDER BY concert_revenue / number_of_members DESC
    ) AS ranked_concerts
  FROM concerts
) AS subquery
WHERE ranked_concerts = 1
ORDER BY revenue_per_member DESC;