-- Title: Unfinished Parts
-- Source: DataLemur (Interview - Easy, Tesla)
-- Link: https://datalemur.com/questions/tesla-unfinished-parts
-- Concepts: NULL handling, WHERE

/*
Approach:
- Unfinished parts are those with no finish_date.
- Filter rows where finish_date IS NULL.
*/

SELECT
  part,
  assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;