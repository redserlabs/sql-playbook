# Aggregations + GROUP BY + HAVING (SQL)

- `GROUP BY` groups rows before aggregations (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).
- `WHERE` filters **before** aggregation (row-level filters).
- `HAVING` filters **after** aggregation (group-level filters).

## Patterns
- Count per group: `SELECT col, COUNT(*) FROM t GROUP BY col`
- Count distinct: `COUNT(DISTINCT col)`
- Top N: `ORDER BY metric DESC LIMIT N`
- Calculated metric: `total_profit = total_sales - cogs`

## Tips
- Useful alias: `COUNT(*) AS cnt` then `ORDER BY cnt DESC`
- “Must have all skills”: `WHERE skill IN (...)` + `HAVING COUNT(skill) = N`