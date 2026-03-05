-- Title: SQL BETWEEN Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-between-practice-exercise
-- Concepts: WHERE, BETWEEN, IN, AND

/*
Approach:
- Filter manufacturer to a given list (IN)
- Filter units_sold within a range using BETWEEN (inclusive)
*/

SELECT manufacturer, drug, units_sold
FROM pharmacy_sales
WHERE manufacturer IN ('Biogen', 'AbbVie', 'Eli Lilly')
  AND units_sold BETWEEN 100000 AND 105000;