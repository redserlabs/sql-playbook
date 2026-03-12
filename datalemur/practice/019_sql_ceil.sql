-- Title: SQL CEIL Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-ceil-practice-exercise
-- Concepts: CEIL, arithmetic, WHERE, ORDER BY

/*
Approach:
- unit_cost = CEIL(total_sales / units_sold)
- Filter manufacturer = 'Merck'
- Order by unit_cost ascending
*/

SELECT
  drug,
  CEIL(total_sales/units_sold) AS unit_cost
FROM pharmacy_sales
WHERE manufacturer = 'Merck'
ORDER BY CEIL(total_sales/units_sold) ASC;