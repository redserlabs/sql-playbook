# Date/time functions (SQL)

5 things to know for interviews. All examples use PostgreSQL syntax (DataLemur default).

## 1. EXTRACT — pull a piece out of a date

```sql
SELECT
  EXTRACT(YEAR FROM match_date) AS annee,
  EXTRACT(MONTH FROM match_date) AS mois,
  EXTRACT(DAY FROM match_date) AS jour
FROM matchs
```

Use for filtering: `WHERE EXTRACT(YEAR FROM date_col) = 2025`

## 2. DATE_TRUNC — round to the start of a period

```sql
SELECT
  DATE_TRUNC('month', order_date) AS debut_mois,
  COUNT(*) AS nb_commandes
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY debut_mois
```

`DATE_TRUNC('month', '2025-03-18')` → `2025-03-01`. Also works with `'week'`, `'quarter'`, `'year'`.

This is the most common date pattern in interviews: DATE_TRUNC + GROUP BY for monthly/weekly analysis.

## 3. Date arithmetic — difference between dates

```sql
-- PostgreSQL: subtract two dates = integer (days)
SELECT date_premier_but - date_transfert AS jours_avant_premier_but
FROM transferts
```

## 4. INTERVAL — add or subtract time

```sql
-- Last 30 days
WHERE order_date >= CURRENT_DATE - INTERVAL '30 days'

-- Next 6 months
WHERE fin_contrat BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '6 months'
```

Options: `'7 days'`, `'3 months'`, `'1 year'`.

## 5. CURRENT_DATE / NOW()

```sql
CURRENT_DATE    -- today's date (no time): 2025-03-18
NOW()           -- date + exact time: 2025-03-18 14:32:07
```

## Common interview patterns

- Monthly revenue: `DATE_TRUNC('month', date) + GROUP BY + SUM`
- Month-over-month growth: `DATE_TRUNC + LAG() OVER (ORDER BY month)`
- Filter recent activity: `WHERE date >= CURRENT_DATE - INTERVAL '30 days'`
- Extract year for yearly comparison: `EXTRACT(YEAR FROM date)`
