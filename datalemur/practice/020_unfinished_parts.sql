-- Title: Unfinished Parts
-- Source: DataLemur (Practice, Tesla)
-- Link: https://datalemur.com/questions/tesla-unfinished-parts
-- Concepts: WHERE, NULL handling

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