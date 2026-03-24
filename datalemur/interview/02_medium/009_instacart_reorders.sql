-- Source: DataLemur (Interview)
-- Difficulty: Medium
-- Title: Instacart Reorders – Case Study Checkpoint #2
-- Link: https://datalemur.com/questions/instacart-reorders
-- Concepts: JOIN, GROUP BY, HAVING, aggregation, filtering

SELECT
    prod.product_id,
    prod.product_name,
    prod.aisle_id,
    prod.department_id,
    dept.department,
    aisles.aisle,
    SUM(op_prior.reordered) AS prior_reorders,
    SUM(op_curr.reordered) AS current_reorders
FROM ic_products AS prod

JOIN ic_order_products_prior AS op_prior
    ON prod.product_id = op_prior.product_id

JOIN ic_order_products_curr AS op_curr
    ON prod.product_id = op_curr.product_id

JOIN ic_departments AS dept
    ON prod.department_id = dept.department_id

JOIN ic_aisles AS aisles
    ON prod.aisle_id = aisles.aisle_id

GROUP BY
    prod.product_id,
    prod.product_name,
    prod.aisle_id,
    prod.department_id,
    dept.department,
    aisles.aisle

HAVING
    SUM(op_prior.reordered) < 10
    AND SUM(op_curr.reordered) >= 10

ORDER BY current_reorders DESC;