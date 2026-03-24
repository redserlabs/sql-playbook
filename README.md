# sql-playbook

SQL interview prep through deliberate practice — DataLemur solutions, patterns, and notes.

---

## Progress

| Source | Category | Count |
|--------|----------|-------|
| DataLemur | Practice (Learn SQL) | 21 |
| DataLemur | Interview – Easy | 11 |
| DataLemur | Interview – Medium | 9 |
| DataLemur | Interview – Hard | 2 |

---

## Structure

```
sql-playbook/
├── datalemur/
│   ├── practice/          # Learn SQL exercises
│   └── interview/
│       ├── 01_easy/
│       ├── 02_medium/
│       └── 03_hard/
├── notes/                 # Topic notes & cheatsheet
└── business/              # Real-world patterns
```

---

## Notes

| File | Topic |
|------|-------|
| 00-sql-cheatsheet | Full quick reference |
| 01-filtering-basics | WHERE, BETWEEN, IN, LIKE |
| 02-aggregations-groupby-having | COUNT, SUM, AVG, GROUP BY, HAVING |
| 03-joins | INNER, LEFT, SELF, LEFT JOIN + WHERE NULL |
| 04-case-and-conditional-logic | CASE, CASE inside COUNT/SUM/AVG |
| 05-null-coalesce | NULL, IS NULL, COALESCE |
| 06-ctes | Single CTEs, chained CTEs |
| 07-window-functions | ROW_NUMBER, RANK, LAG/LEAD, SUM OVER |
| 08-date-time-functions | EXTRACT, DATE_TRUNC, INTERVAL |

---

## Patterns covered

- SELECT, WHERE, ORDER BY, LIMIT
- Filtering: BETWEEN, IN, LIKE
- Aggregations: COUNT, SUM, AVG, MIN, MAX
- GROUP BY + HAVING
- JOINs (INNER, LEFT, RIGHT, FULL OUTER, SELF)
- LEFT JOIN + WHERE NULL
- CASE + CASE inside aggregates
- NULL, IS NULL, COALESCE
- CTEs + chained CTEs
- Window functions: ROW_NUMBER, RANK, LAG/LEAD, SUM OVER
- Date/time: EXTRACT, DATE_TRUNC, INTERVAL
