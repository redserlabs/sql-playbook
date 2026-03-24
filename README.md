# sql-playbook

> SQL mastery through deliberate practice — DataLemur, LeetCode & real-world business patterns.

Building strong SQL foundations for a Data Engineering career. Every solution includes my approach, the pattern used, and key takeaways.

---

## Progress

| Source | Category | Done | Status |
|--------|----------|------|--------|
| DataLemur | Learn SQL (Practice) | 19 | ✅ Complete |
| DataLemur | Interview – Easy | 4+ | 🔄 In progress |
| DataLemur | Interview – Medium | — | 🔄 In progress |
| DataLemur | Interview – Hard | — | ⏳ Next |
| LeetCode | SQL 50 | — | 🚫 Skipped (covered by DataLemur) |

---

## Structure

```
sql-playbook/
├── datalemur/
│   ├── practice/            # Learn SQL exercises (19 completed)
│   └── interview/
│       ├── easy/            # Interview questions – Easy
│       ├── medium/          # Interview questions – Medium
│       └── hard/            # Interview questions – Hard
├── business/                # Real-world business SQL patterns
├── notes/                   # Cheatsheets & topic deep-dives
│   ├── 00-sql-cheatsheet.md
│   ├── 01-filtering-basics.md
│   ├── 02-aggregations-groupby-having.md
│   ├── 03-joins.md
│   ├── 04-case-and-conditional-logic.md
│   ├── 05-null-coalesce.md
│   ├── 06-ctes.md
│   ├── 07-window-functions.md
│   └── 08-date-time-functions.md
└── README.md
```

---

## Key patterns covered

- [x] SELECT, WHERE, ORDER BY, LIMIT
- [x] Filtering: BETWEEN, IN, LIKE, comparison operators
- [x] Aggregations: COUNT, SUM, AVG, MIN, MAX
- [x] GROUP BY + HAVING
- [x] JOINs (INNER, LEFT, RIGHT, FULL OUTER, SELF)
- [x] LEFT JOIN + WHERE NULL (find missing records)
- [x] CASE + conditional logic
- [x] CASE inside aggregates (COUNT/SUM/AVG + CASE)
- [x] NULL handling: IS NULL, IS NOT NULL, COALESCE
- [x] CTEs (Common Table Expressions) + chained CTEs
- [x] Date/time: EXTRACT, DATE_TRUNC, INTERVAL, date arithmetic
- [ ] Window functions: ROW_NUMBER, RANK, LAG/LEAD, SUM OVER
- [ ] Subqueries & correlated subqueries
- [ ] String functions
- [ ] UNION / INTERSECT / EXCEPT

---

## Tech

- PostgreSQL syntax (DataLemur default)
- Practiced on [DataLemur](https://datalemur.com)
- Notes written in Markdown

---

## About me

Transitioning from Data Analyst → Data Engineer. MSc Data Analytics (INSEEC Paris), former Data Marketing Analyst at the French Football Federation (FFF). Currently building a complete Data Engineering skillset: SQL → Python → Docker → Airflow → dbt → Spark → BigQuery.

This repo is part of a structured 16-week preparation alongside the [DE Zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp), a capstone football data pipeline project, and a Databricks certification.

📍 Paris, France · [LinkedIn](https://www.linkedin.com/in/reda-serhir-10a3112b8) · [GitHub](https://github.com/redserlabs)
