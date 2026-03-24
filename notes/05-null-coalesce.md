# NULL + COALESCE (SQL)

## What is NULL

NULL = "unknown". Not 0, not empty string, not false. It's the absence of any value.

## Testing for NULL

```sql
-- WRONG (always returns nothing)
WHERE col = NULL

-- CORRECT
WHERE col IS NULL
WHERE col IS NOT NULL
```

Why? Because `NULL = NULL` returns NULL (not TRUE). "Unknown equals unknown?" → "I don't know."

## NULL in operations

Any arithmetic with NULL returns NULL:
```sql
NULL + 10 = NULL
NULL * 5 = NULL
CONCAT('hello', NULL) = NULL  -- in some DBs
```

## COALESCE — the fallback function

Returns the first non-NULL value in the list:
```sql
COALESCE(phone_work, phone_personal, 'No phone')
```

Checks left to right. First non-NULL wins.

### Common uses

```sql
-- Replace NULL with a default
SELECT COALESCE(salary, 0) AS salary_clean FROM employees

-- Display name with fallback
SELECT COALESCE(nickname, first_name, 'Unknown') AS display_name FROM users

-- Avoid NULL breaking calculations
SELECT total_sales / COALESCE(units_sold, 1) AS unit_price FROM products
```

## NULL with aggregates

- `COUNT(*)` counts all rows including NULLs.
- `COUNT(col)` counts only non-NULL values.
- `SUM`, `AVG`, `MIN`, `MAX` all ignore NULLs.
- `COUNT(CASE WHEN ... THEN 1 END)` — no ELSE means NULL → COUNT ignores it.

## NOT NULL constraint

A column defined as `NOT NULL` refuses any INSERT that leaves it empty. The database enforces "this field must be filled."
