-- =========================================================
-- 07_ctes.sql
-- Common Table Expressions (CTE)
-- =========================================================
--
-- Objetivo:
-- Aprender a dividir consultas complejas en bloques
-- reutilizables y fáciles de leer.
--
-- Conceptos:
-- - WITH
-- - CTE
-- - JOIN
-- - GROUP BY
-- - SUM()
-- - Subconsultas sobre CTE
-- - Introducción a funciones de ventana
-- =========================================================


-- =========================================================
-- EJERCICIO 1
-- Clientes cuyo gasto total supera $100.000
-- =========================================================

WITH ventas_cliente AS (

    SELECT
        first_name,
        SUM(price * quantity) AS gasto

    FROM customers

    JOIN orders
        ON customers.customer_id = orders.customer_id

    JOIN products
        ON orders.product_id = products.product_id

    GROUP BY first_name
)

SELECT
    first_name,
    gasto

FROM ventas_cliente

WHERE gasto > 100000;


-- =========================================================
-- EJERCICIO 2
-- Clientes que gastaron más que el promedio.
-- =========================================================

WITH ventas_cliente AS (

    SELECT
        first_name,
        SUM(price * quantity) AS gasto

    FROM customers

    JOIN orders
        ON customers.customer_id = orders.customer_id

    JOIN products
        ON orders.product_id = products.product_id

    GROUP BY first_name
)

SELECT
    first_name,
    gasto

FROM ventas_cliente

WHERE gasto > (

    SELECT AVG(gasto)
    FROM ventas_cliente

);


-- =========================================================
-- EJERCICIO 3
-- Porcentaje que representa cada cliente sobre
-- los ingresos totales.
--
-- Introducción a funciones de ventana.
-- =========================================================

WITH ventas_cliente AS (

    SELECT
        first_name,
        SUM(price * quantity) AS gasto

    FROM customers

    JOIN orders
        ON customers.customer_id = orders.customer_id

    JOIN products
        ON orders.product_id = products.product_id

    GROUP BY first_name
),

gastos AS (

    SELECT
        first_name,
        gasto,

        SUM(gasto) OVER () AS gasto_total

    FROM ventas_cliente
)

SELECT
    first_name,
    gasto,
    gasto_total,

    gasto / gasto_total * 100 AS porcentaje

FROM gastos;


-- =========================================================
-- EJERCICIO 4
-- Clientes cuyo gasto está por encima del promedio,
-- mostrando también su participación sobre el total.
-- =========================================================

WITH ventas_cliente AS (

    SELECT
        first_name,
        SUM(price * quantity) AS gasto

    FROM customers

    JOIN orders
        ON customers.customer_id = orders.customer_id

    JOIN products
        ON orders.product_id = products.product_id

    GROUP BY first_name
),

gastos AS (

    SELECT
        first_name,
        gasto,
        SUM(gasto) OVER () AS gasto_total

    FROM ventas_cliente
)

SELECT
    first_name,
    gasto,
    gasto_total,
    gasto / gasto_total * 100 AS porcentaje

FROM gastos

WHERE gasto > (

    SELECT AVG(gasto)
    FROM gastos

);
