-- Title: Page With No Likes
-- Source: DataLemur (Interview - Easy, Facebook)
-- Link: https://datalemur.com/questions/sql-page-with-no-likes
-- Concepts: NOT EXISTS, anti-join pattern

/*
Approach:
- Return pages where no row exists in page_likes for that page_id
*/

-- My submission:
SELECT page_id
FROM pages
WHERE NOT EXISTS (
  SELECT 1
  FROM page_likes AS likes
  WHERE likes.page_id = pages.page_id
)
ORDER BY page_id;
