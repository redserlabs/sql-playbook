-- Source: DataLemur (Interview)
-- Difficulty: Medium
-- Title: Odd and Even Measurements (Google)
-- Link: https://datalemur.com/questions/odd-even-measurements
-- Concepts: CTE, ROW_NUMBER, window function, FILTER, modulo, aggregation

WITH ranked_measurements AS (
  SELECT
    CAST(measurement_time AS DATE) AS measurement_day,
    measurement_value,
    ROW_NUMBER() OVER (
      PARTITION BY CAST(measurement_time AS DATE)
      ORDER BY measurement_time
    ) AS measurement_num
  FROM measurements
)

SELECT
  measurement_day,
  SUM(measurement_value) FILTER (WHERE measurement_num % 2 != 0) AS odd_sum,
  SUM(measurement_value) FILTER (WHERE measurement_num % 2 = 0) AS even_sum
FROM ranked_measurements
GROUP BY measurement_day;