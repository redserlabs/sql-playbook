-- Title: Laptop vs. Mobile Viewership
-- Source: DataLemur (Interview - Easy)
-- Link: https://datalemur.com/questions/laptop-mobile-viewership
-- Concepts: CASE, SUM, conditional aggregation

/*
Approach:
- Count laptop views and mobile views using conditional aggregation.
- Mobile includes tablet + phone.
*/

SELECT
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;