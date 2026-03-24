# Window functions (SQL)

Window functions compute a value across a set of rows related to the current row — without collapsing them into one row like GROUP BY does.

## Syntax

```sql
function() OVER (
  PARTITION BY col        -- optional: split into groups
  ORDER BY col2           -- optional: define row order
)
```

`PARTITION BY` = like GROUP BY but keeps every row. `ORDER BY` = order within each partition.

## ROW_NUMBER — unique rank, no ties

```sql
SELECT nom, equipe, buts,
  ROW_NUMBER() OVER (PARTITION BY equipe ORDER BY buts DESC) AS rang
FROM joueurs
```

Each player gets a unique number within their team. Top scorer = 1, second = 2, etc. No ties.

### "Top N per group" pattern (very common in interviews)

```sql
WITH ranked AS (
  SELECT nom, equipe, buts,
    ROW_NUMBER() OVER (PARTITION BY equipe ORDER BY buts DESC) AS rang
  FROM joueurs
)

SELECT nom, equipe, buts
FROM ranked
WHERE rang <= 3
```

Top 3 scorers per team. CTE + ROW_NUMBER + WHERE rang <= N.

## RANK vs DENSE_RANK

- `RANK()` — ties get the same number, then skips. (1, 2, 2, 4)
- `DENSE_RANK()` — ties get the same number, no skip. (1, 2, 2, 3)
- `ROW_NUMBER()` — no ties ever. (1, 2, 3, 4)

## LAG / LEAD — look at previous or next row

```sql
SELECT equipe, mois, revenu,
  LAG(revenu, 1) OVER (PARTITION BY equipe ORDER BY mois) AS revenu_mois_prec,
  revenu - LAG(revenu, 1) OVER (PARTITION BY equipe ORDER BY mois) AS diff
FROM revenus_mensuels
```

`LAG(col, 1)` = value from 1 row before. `LEAD(col, 1)` = value from 1 row after. Great for month-over-month comparisons.

## SUM / AVG OVER — running or group totals

```sql
-- Total team goals next to each player (no GROUP BY needed)
SELECT nom, equipe, buts,
  SUM(buts) OVER (PARTITION BY equipe) AS total_equipe
FROM joueurs

-- Running total (cumulative sum)
SELECT date, revenu,
  SUM(revenu) OVER (ORDER BY date) AS revenu_cumule
FROM ventes
```

## Tips

- Window functions run AFTER WHERE and GROUP BY.
- You can't use a window function in WHERE. Use a CTE: compute the window in the CTE, filter in the outer query.
- Most common interview pattern: ROW_NUMBER + CTE + WHERE rang = 1 (or <= N).
- LAG/LEAD for "compared to previous period" questions.
