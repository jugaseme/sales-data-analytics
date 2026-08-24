-- =========================================
-- 06_subqueries.sql
-- Subconsultas en PostgreSQL
-- =========================================


-- =========================================
-- 1. Productos con precio superior al promedio
-- =========================================

SELECT
    product_name,
    price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);


-- =========================================
-- 2. Cliente que más dinero ha gastado
--    usando una subconsulta
-- =========================================

SELECT
    product_name,
    price
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products
);
