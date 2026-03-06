-- Title: SQL SUM Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-sum-practice-exercise
-- Concepts: COUNT, SUM, WHERE

/*
Approach:
- Filter manufacturer = 'Pfizer'
- Count rows (drugs) and sum total_sales
Notes:
- COUNT(*) counts rows; COUNT(column) ignores NULLs
*/

SELECT
  COUNT(*) AS drug_count,
  SUM(total_sales) AS total_sales
FROM pharmacy_sales
WHERE manufacturer = 'Pfizer';