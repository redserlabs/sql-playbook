-- Title: SQL LIKE % Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-like-practice-exercise-1
-- Concepts: LIKE, % wildcard

/*
Notes:
- % matches any number of characters (including 0)
Approach:
- First name starts with 'F' => 'F%'
- Last name ends with 'ck' => '%ck'
- Both conditions together => 'F%ck'
*/

SELECT *
FROM customers
WHERE customer_name LIKE 'F%ck';