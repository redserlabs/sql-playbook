-- Title: SQL IN Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-in-practice-exercise
-- Concepts: WHERE, IN

/*
Approach:
- Use IN to match a list of values (cleaner than multiple ORs)
*/

SELECT manufacturer, drug, units_sold
FROM pharmacy_sales
WHERE manufacturer IN ('Roche', 'Bayer', 'AstraZeneca')
AND units_sold NOT BETWEEN 55000 AND 550000;