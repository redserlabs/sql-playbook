# JOINs (SQL)

## Types

- `INNER JOIN` — only rows that match in both tables.
- `LEFT JOIN` — all rows from left table + matching right (NULL if no match).
- `RIGHT JOIN` — all rows from right table. In practice, just flip tables and use LEFT.
- `FULL OUTER JOIN` — all rows from both tables. NULL on both sides if no match.
- `SELF JOIN` — a table joined with itself. Requires aliases to distinguish the two copies.

## Syntax

```sql
SELECT j.nom, c.nom_club
FROM joueurs j
INNER JOIN clubs c ON j.club_id = c.id
```

## Key patterns

### LEFT JOIN + WHERE NULL — find what doesn't exist

"Find players without a club":
```sql
SELECT j.nom
FROM joueurs j
LEFT JOIN clubs c ON j.club_id = c.id
WHERE c.id IS NULL
```

This falls constantly in interviews: customers without orders, users who never logged in, products never purchased.

### INNER JOIN + GROUP BY — aggregate across tables

"Goals per club":
```sql
SELECT c.nom_club, SUM(j.buts) AS total_buts
FROM joueurs j
INNER JOIN clubs c ON j.club_id = c.id
GROUP BY c.nom_club
```

### SELF JOIN — compare rows within the same table

"Find teammates (same club)":
```sql
SELECT a.nom AS joueur, b.nom AS coequipier
FROM joueurs a
INNER JOIN joueurs b ON a.club_id = b.club_id
WHERE a.id != b.id
```

## Tips

- 90% of interviews = INNER JOIN or LEFT JOIN.
- Always think: ALL rows from one side (LEFT) or ONLY matches (INNER)?
- Use aliases — expected in interviews, cleaner to read.
