-- Source: DataLemur (Practice)
-- Difficulty: Easy
-- Title: SQL LOWER Practice Exercise
-- Link: https://datalemur.com/questions/sql-lower-practice-exercise
-- Concepts: LOWER, LIKE, WHERE filtering

SELECT *
FROM customers
WHERE LOWER(customer_name) LIKE '%son'
  AND gender = 'Male'
  AND age = 20;