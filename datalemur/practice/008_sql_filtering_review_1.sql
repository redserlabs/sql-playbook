-- Title: SQL Filtering Practice Exercise #1
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-filtering-practice-exercise-1
-- Concepts: WHERE, AND, BETWEEN, IN, LIKE, operator precedence

/*
Approach:
- Age range using BETWEEN (inclusive)
- State filter using IN
- Exclude gender 'n/a'
- Name starts with A or B (parentheses required with OR)
*/

SELECT *
FROM customers
WHERE age BETWEEN 18 AND 22
  AND state IN ('Victoria', 'Tasmania', 'Queensland')
  AND gender <> 'n/a'
  AND (customer_name LIKE 'A%' OR customer_name LIKE 'B%');