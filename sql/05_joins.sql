-- =========================================
-- 05_joins.sql
-- Consultas utilizando JOIN
-- =========================================


-- =========================================
-- 1. Ventas con información del cliente
-- =========================================

SELECT
    orders.order_id,
    customers.first_name AS customer,
    orders.quantity,
    orders.order_date
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id;


-- =========================================
-- 2. Ventas con información de cliente y producto
-- =========================================

SELECT
    orders.order_id,
    customers.first_name AS customer,
    products.product_name AS product,
    orders.quantity,
    orders.order_date
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id
JOIN products
    ON orders.product_id = products.product_id;


-- =========================================
-- 3. Unidades vendidas por producto
-- =========================================

SELECT
    products.product_name,
    SUM(orders.quantity) AS unidades_vendidas
FROM orders
JOIN products
    ON orders.product_id = products.product_id
GROUP BY products.product_name
ORDER BY unidades_vendidas DESC;


-- =========================================
-- 4. Productos más vendidos
-- =========================================

SELECT
    products.product_name,
    SUM(orders.quantity) AS unidades_vendidas
FROM orders
JOIN products
    ON orders.product_id = products.product_id
GROUP BY products.product_name
ORDER BY unidades_vendidas DESC
LIMIT 3;


-- =========================================
-- 5. Ingresos generados por producto
-- =========================================

SELECT
    products.product_name,
    products.price AS valor_unitario,
    SUM(orders.quantity) AS unidades_vendidas,
    SUM(orders.quantity * products.price) AS ingresos
FROM orders
JOIN products
    ON orders.product_id = products.product_id
GROUP BY products.product_name, products.price
ORDER BY ingresos DESC;


-- =========================================
-- 6. Producto que genera más ingresos
-- =========================================

SELECT
    products.product_name,
    products.price AS valor_unitario,
    SUM(orders.quantity) AS unidades_vendidas,
    SUM(orders.quantity * products.price) AS ingresos
FROM orders
JOIN products
    ON orders.product_id = products.product_id
GROUP BY products.product_name, products.price
ORDER BY ingresos DESC
LIMIT 1;


-- =========================================
-- 7. Cliente que más dinero ha gastado
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
ORDER BY gasto DESC
LIMIT 1;


-- =========================================
-- 8. Clientes que gastaron más de $100.000
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
HAVING SUM(orders.quantity * products.price) > 100000
ORDER BY gasto DESC;


-- =========================================
-- 9. Clientes que gastaron más de $100.000
--    comprando productos de más de $20.000
-- =========================================

SELECT
    customers.first_name AS cliente,
    SUM(orders.quantity * products.price) AS gasto
FROM orders
JOIN products
    ON orders.product_id = products.product_id
JOIN customers
    ON orders.customer_id = customers.customer_id
WHERE products.price > 20000
GROUP BY customers.first_name
HAVING SUM(orders.quantity * products.price) > 100000
ORDER BY gasto DESC;
