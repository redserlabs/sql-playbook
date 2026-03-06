# Filtering basics (SQL)

- `AND` is evaluated **before** `OR` → use parentheses when mixing them.
- `BETWEEN a AND b` is **inclusive** (includes `a` and `b`).
- Prefer `IN (..)` over multiple `OR` (cleaner).
- `LIKE '%x'` = ends with x, `LIKE 'x%'` = starts with x, `_` = exactly 1 character.
- Use `<>` for “not equal” (standard SQL).