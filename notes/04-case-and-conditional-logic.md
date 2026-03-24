# CASE + conditional logic (SQL)

CASE is the if/else of SQL. There is no IF statement in standard SQL SELECT/WHERE.

## Basic syntax

```sql
CASE
  WHEN condition THEN result
  WHEN condition2 THEN result2
  ELSE default_result
END AS alias
```

SQL reads WHEN top-to-bottom. First match wins. If nothing matches, ELSE fires. No ELSE = returns NULL.

## Categorization

```sql
SELECT nom, buts,
  CASE
    WHEN buts >= 20 THEN 'Elite'
    WHEN buts >= 10 THEN 'Bon'
    ELSE 'En progression'
  END AS categorie
FROM joueurs
```

Tip: if categories are exhaustive, use ELSE instead of a redundant third WHEN. It's shorter and catches edge cases.

## CASE inside aggregates — the interview pattern

### COUNT + CASE (no ELSE — NULL is ignored by COUNT)

```sql
SELECT equipe,
  COUNT(CASE WHEN buts >= 10 THEN 1 END) AS buteurs
FROM joueurs
GROUP BY equipe
```

No ELSE → non-matching rows return NULL → COUNT ignores them → you count only what matches.

### SUM + CASE (ELSE 0 — for clean addition)

```sql
SELECT equipe,
  SUM(CASE WHEN poste = 'Attaquant' THEN buts ELSE 0 END) AS buts_attaquants
FROM joueurs
GROUP BY equipe
```

ELSE 0 → non-matching rows add 0 → sum stays clean.

### AVG + CASE (no ELSE — average only matching rows)

```sql
SELECT equipe,
  AVG(CASE WHEN poste = 'Attaquant' THEN buts END) AS moy_buts_att
FROM joueurs
GROUP BY equipe
```

No ELSE → non-matching rows are NULL → AVG ignores NULLs → average only counts attackers.

## Rules

- `COUNT(CASE ...)` → **no ELSE** (want NULL to be ignored)
- `SUM(CASE ...)` → **ELSE 0** (want clean sums)
- `AVG(CASE ...)` → **no ELSE** (want to average only matching rows)
- Can't reuse a CASE alias in the same SELECT — SQL reads all columns simultaneously.
