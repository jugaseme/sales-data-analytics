-- =====================================================
-- SALES DATA ANALYTICS
-- AGGREGATIONS
-- =====================================================

-- COUNT: cantidad total de clientes
SELECT COUNT(*) AS total_clientes
FROM customers;


-- COUNT + GROUP BY: clientes por ciudad
SELECT city, COUNT(*) AS total_clientes
FROM customers
GROUP BY city
ORDER BY total_clientes DESC;


-- SUM: valor total del inventario
SELECT SUM(price * stock) AS valor_inventario
FROM products;


-- SUM + GROUP BY: inventario por categoría
SELECT category, SUM(price * stock) AS valor_inventario
FROM products
GROUP BY category;


-- HAVING: categorías con inventario superior a $5.000.000
SELECT category, SUM(price * stock) AS valor_inventario
FROM products
GROUP BY category
HAVING SUM(price * stock) > 5000000;


-- AVG: precio promedio de los productos
SELECT AVG(price) AS precio_promedio
FROM products;
