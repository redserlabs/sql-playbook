-- Source: DataLemur (Interview)
-- Difficulty: Medium
-- Title: Card Launch Success (JPMorgan)
-- Link: https://datalemur.com/questions/card-launch-success
-- Concepts: CTE, window function (MIN OVER), MAKE_DATE, ORDER BY

WITH card_launch AS (
  SELECT
    card_name,
    issued_amount,
    MAKE_DATE(issue_year, issue_month, 1) AS issue_date,
    MIN(MAKE_DATE(issue_year, issue_month, 1)) OVER (
      PARTITION BY card_name
    ) AS launch_date
  FROM monthly_cards_issued
)
SELECT
  card_name,
  issued_amount
FROM card_launch
WHERE issue_date = launch_date
ORDER BY issued_amount DESC;