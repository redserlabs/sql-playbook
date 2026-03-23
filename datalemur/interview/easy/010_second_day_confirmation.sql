-- Title: Second Day Confirmation
-- Source: DataLemur (Interview - Easy)
-- Link: https://datalemur.com/questions/second-day-confirmation
-- Concepts: JOIN, DISTINCT, DATE/TIME arithmetic, INTERVAL

/*
Approach:
- Join emails to texts on email_id
- Keep confirmations happening exactly 1 day after signup
- Return unique user_ids
*/

-- Solution:
SELECT DISTINCT user_id
FROM emails
INNER JOIN texts
  ON emails.email_id = texts.email_id
WHERE texts.action_date = emails.signup_date + INTERVAL '1 day'
  AND texts.signup_action = 'Confirmed';
  