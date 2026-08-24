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
    customers.first_name AS cliente,
    SUM(orders.quantity * products.price) AS gasto
FROM orders
JOIN products
    ON orders.product_id = products.product_id
JOIN customers
    ON orders.customer_id = customers.customer_id
GROUP BY customers.first_name
HAVING SUM(orders.quantity * products.price) = (
    SELECT MAX(total_gasto)
    FROM (
        SELECT
            SUM(orders.quantity * products.price) AS total_gasto
        FROM orders
        JOIN products
            ON orders.product_id = products.product_id
        JOIN customers
            ON orders.customer_id = customers.customer_id
        GROUP BY customers.first_name
    ) AS gastos_clientes
);
