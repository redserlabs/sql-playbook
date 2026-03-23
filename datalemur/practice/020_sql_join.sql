-- Title: Easy SQL JOIN Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-join-practice-exercise-robinhood
-- Concepts: INNER JOIN, join keys

/*
Approach:
- Join trades to users on user_id
*/

-- My submission:
SELECT *
FROM trades
INNER JOIN users
  ON trades.user_id = users.user_id;