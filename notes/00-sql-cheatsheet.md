# SQL cheatsheet

Quick reference for the most common SQL patterns. For detailed notes, see the individual topic files.

## Query execution order

```
FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT
```

This is why you can't use a SELECT alias in WHERE (it doesn't exist yet).

## Filtering

```sql
WHERE col = 'value'                    -- exact match
WHERE col IN ('a', 'b', 'c')          -- multiple values (cleaner than OR)
WHERE col BETWEEN 10 AND 20           -- inclusive range
WHERE col LIKE 'A%'                   -- starts with A
WHERE col LIKE '%z'                   -- ends with z
WHERE col LIKE '_a%'                  -- second char is a
WHERE col IS NULL                     -- never use = NULL
WHERE col IS NOT NULL
WHERE col <> 'value'                  -- not equal (standard SQL)
```

## Aggregations

```sql
COUNT(*)              -- count all rows
COUNT(col)            -- count non-NULL values
COUNT(DISTINCT col)   -- count unique non-NULL values
SUM(col)              -- total
AVG(col)              -- average (ignores NULLs)
MIN(col) / MAX(col)   -- smallest / largest
```

## GROUP BY + HAVING

```sql
SELECT col, COUNT(*) AS cnt
FROM table
WHERE ...              -- filters ROWS (before grouping)
GROUP BY col
HAVING COUNT(*) > 5    -- filters GROUPS (after grouping)
ORDER BY cnt DESC
```

## JOINs

```sql
INNER JOIN             -- only matching rows from both tables
LEFT JOIN              -- all left rows + matching right (NULL if no match)
RIGHT JOIN             -- all right rows (just flip tables and use LEFT)
FULL OUTER JOIN        -- all rows from both sides
SELF JOIN              -- table joined with itself (need aliases)
LEFT JOIN + WHERE NULL -- find rows with NO match in other table
```

## CASE

```sql
CASE
  WHEN condition THEN result
  WHEN condition2 THEN result2
  ELSE default
END AS alias
```

Inside aggregates:
```sql
COUNT(CASE WHEN x THEN 1 END)              -- no ELSE (NULL ignored by COUNT)
SUM(CASE WHEN x THEN value ELSE 0 END)     -- ELSE 0 for clean sums
AVG(CASE WHEN x THEN value END)             -- no ELSE (only avg matching rows)
```

## NULL

```sql
IS NULL / IS NOT NULL           -- test for NULL (never use = NULL)
COALESCE(a, b, c)              -- first non-NULL value
NULL + anything = NULL          -- any operation with NULL = NULL
```

## CTEs

```sql
WITH cte_name AS (
  SELECT ...
)
SELECT * FROM cte_name
```

## Window functions

```sql
ROW_NUMBER() OVER (PARTITION BY col ORDER BY col2)
RANK() OVER (PARTITION BY col ORDER BY col2 DESC)
LAG(col, 1) OVER (ORDER BY date_col)          -- previous row value
LEAD(col, 1) OVER (ORDER BY date_col)         -- next row value
SUM(col) OVER (PARTITION BY group_col)         -- running/group total
```

## Date/time

```sql
EXTRACT(YEAR FROM date_col)                     -- get year/month/day
DATE_TRUNC('month', date_col)                   -- round to start of period
date1 - date2                                   -- difference in days (Postgres)
CURRENT_DATE                                    -- today's date
col >= CURRENT_DATE - INTERVAL '30 days'        -- last 30 days
```
