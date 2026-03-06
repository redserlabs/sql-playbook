-- Title: SQL LIKE _ Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-like-_-practice-exercise
-- Concepts: LIKE, _ wildcard

/*
Notes:
- _ matches exactly one character
Approach:
- 2nd and 3rd letters are 'e' => pattern: _ee%
  - 1st char: anything (_)
  - 2nd char: e
  - 3rd char: e
  - rest: anything (%)
*/

SELECT *
FROM customers
WHERE customer_name LIKE '_ee%';