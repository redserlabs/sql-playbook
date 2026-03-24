# CTEs — Common Table Expressions (SQL)

A CTE is a temporary named query you write before your main query. Think of it as a mini-table you build on the fly.

## Basic syntax

```sql
WITH cte_name AS (
  SELECT ...
)
SELECT * FROM cte_name
```

`WITH ... AS (...)` then use it like a normal table.

## Why use CTEs

- Break complex queries into readable steps.
- Avoid repeating the same subquery multiple times.
- Show clear thinking in interviews (step-by-step logic).

## Single CTE

"Players who score above their team average":
```sql
WITH team_avg AS (
  SELECT equipe, AVG(buts) AS moy_buts
  FROM joueurs
  GROUP BY equipe
)

SELECT j.nom, j.equipe, j.buts, t.moy_buts
FROM joueurs j
INNER JOIN team_avg t ON j.equipe = t.equipe
WHERE j.buts > t.moy_buts
```

## Chained CTEs

Multiple CTEs separated by commas:
```sql
WITH big_clubs AS (
  SELECT equipe, budget
  FROM clubs
  WHERE budget > 100000000
),

top_scorers AS (
  SELECT nom, equipe, buts
  FROM joueurs
  WHERE buts >= 10
)

SELECT top_scorers.nom, top_scorers.buts, big_clubs.budget
FROM top_scorers
INNER JOIN big_clubs ON top_scorers.equipe = big_clubs.equipe
```

Each CTE does ONE thing. The final query assembles.

## CTE vs subquery

- Use a subquery if it's short and used once.
- Use a CTE if it's complex, used multiple times, or you want readable code.
- In interviews: **default to CTEs**. Recruiters like step-by-step logic.

## The DataLemur pattern

Most medium/hard questions follow this structure:
```sql
WITH step1 AS (
  -- filter or calculate something
),

step2 AS (
  -- use step1 to calculate something more
)

SELECT ...
FROM step2
WHERE ...
```

Decompose the problem into steps. Each CTE = one step. Final query = assemble.
